#!/bin/python3
# TODO: Add means of checking the last pickle save time and starting a new instance if the pickle is too old

from typing import List, Optional

from requests import Response
from selenium.common.exceptions import TimeoutException, StaleElementReferenceException
from selenium.webdriver.remote.webelement import WebElement
from seleniumwire.request import Request

from digitalspot.browser import Browser
from digitalspot.feed import Feed
from digitalspot.sitemap import Sitemap

import os
import pickle
import requests
import pandas as pd
import base64
import urllib.parse
import time
import signal

# Directories
working_dir: str = "../working"
pickle_dir: str = os.path.join(working_dir, "pickles")
blocklists_dir: str = os.path.join(working_dir, "blocklists")
complete_blocklist: str = os.path.join(blocklists_dir, "complete-list.txt")

# Files
screenshot_file: str = os.path.join(working_dir, "webpage.png")
robots_pickle: str = os.path.join(pickle_dir, "robots.pickle")

# These lists contain content I don't want in the spider, that includes porn
# as porn is not what the spider is supposed to be crawling
blocklists: dict = {
    "abuse": "https://blocklistproject.github.io/Lists/alt-version/abuse-nl.txt",
    "ads": "https://blocklistproject.github.io/Lists/alt-version/ads-nl.txt",
    "drugs": "https://blocklistproject.github.io/Lists/alt-version/drugs-nl.txt",
    "fraud": "https://blocklistproject.github.io/Lists/alt-version/fraud-nl.txt",
    "malware": "https://blocklistproject.github.io/Lists/alt-version/malware-nl.txt",
    "phishing": "https://blocklistproject.github.io/Lists/alt-version/phishing-nl.txt",
    "piracy": "https://blocklistproject.github.io/Lists/alt-version/piracy-nl.txt",
    "porn": "https://blocklistproject.github.io/Lists/alt-version/porn-nl.txt",
    "ransomware": "https://blocklistproject.github.io/Lists/alt-version/ransomware-nl.txt",
    "redirect": "https://blocklistproject.github.io/Lists/alt-version/redirect-nl.txt",
    "scam": "https://blocklistproject.github.io/Lists/alt-version/scam-nl.txt",
    "tracking": "https://blocklistproject.github.io/Lists/alt-version/tracking-nl.txt"
}


def download_blocklists():
    # TODO: Write Down Last Download Date To Know When To Update
    with open(complete_blocklist, mode="w") as clist:
        for blocklist in blocklists.keys():
            response: Response = requests.get(url=blocklists[blocklist])

            if response.status_code != 200:
                continue

            with open(file=os.path.join(blocklists_dir, f"{blocklist}.txt"), mode="w") as f:
                f.writelines(response.text)
                f.close()

            total_list: List[str] = [x for x in response.text.split("\n") if not x.startswith("#")]  # Remove Comments
            total_list: List[str] = [x for x in total_list if not x.strip() == ""]  # Remove Blank Lines
            total_list: List[str] = [x for x in total_list if "/" not in x]  # Remove Invalid Addresses

            clist.writelines("\n".join(total_list))
        clist.close()


def import_blocklists() -> List[str]:
    with open(complete_blocklist, mode="r") as blocklist:
        blocked_domains: List[str] = [x.strip() for x in blocklist.readlines()]
        blocklist.close()

        return blocked_domains


def setup():
    if not os.path.exists(working_dir):
        os.mkdir(working_dir)

    if not os.path.exists(pickle_dir):
        os.mkdir(pickle_dir)

    if not os.path.exists(blocklists_dir):
        os.mkdir(blocklists_dir)

    # TODO: Read TODO In Method!!!
    # download_blocklists()


class AlarmTimeoutException(BaseException):
    pass


def alarm_handler(signum, frame):
    # Note: This is a backup method to ensure that Chrome/Selenium doesn't freeze the script
    # print("Received Backup Time Out Message")
    raise AlarmTimeoutException()


def screenshot_pages(urls: list, prefix: str):
    signal.signal(signal.SIGALRM, alarm_handler)
    print(f"Cleaning Up Already Downloaded URLs for `{prefix}`...")

    download_me_urls: list = []
    for url in urls:
        # TIL that Base64 can have + and /. The / is obviously not good because directory separators.
        # So, I replace the / with - in order to fix that so base64 can be used for filenames.
        # https://base64.guru/learn/base64-characters
        screenshot_file = os.path.join(working_dir, "screenshots", prefix, f"{base64.b64encode(bytes(url, 'utf-8')).decode('utf-8').replace('/', '-')}.png")

        if not os.path.exists(screenshot_file) and url not in download_me_urls:
            download_me_urls.append(url)

    download_me_urls.reverse()
    print(f"Finished Cleaning Up Already Downloaded URLs for `{prefix}`...")
    for url in download_me_urls:
        screenshot_file = os.path.join(working_dir, "screenshots", prefix, f"{base64.b64encode(bytes(url, 'utf-8')).decode('utf-8').replace('/', '-')}.png")

        if os.path.exists(screenshot_file):
            print(f"Skipping `{url}` as already saved")
            continue

        # print(f"Waiting 5 Seconds before retrieving {url}...")
        # time.sleep(5)

        successful: bool = False

        try:
            # To Help Requests Find A Valid URL To Try
            if "http://" not in url and "https://" not in url:
                url: str = f"http://{url}"

            # Something is causing Chrome to crash and I'm not sure what
            # encoded_url: str = urllib.parse.quote(url)
            print(f"Retrieving {url}")

            signal.alarm(browser.page_timeout)  # Activate Time Out Alarm
            successful: bool = browser.get(url=url, override=True)  # encoded_url
            signal.alarm(0)  # Turn Off Time Out Alarm
            # successful = False
        except TimeoutException:
            print(f"Retrieving Page Timed Out: {url}")
        except AlarmTimeoutException:
            print(f"Retrieving Page Timed Out Via Alarm: {url}")
            signal.alarm(0)  # Turn Off Time Out Alarm
        except Exception as e:
            if "chrome not reachable" in str(e):
                print("Chrome Crashed!!! It's Probably A Zombie Process!!!")
                print(f"The last URL attempted was: `{url}`")
                # exit(1)

                print("Attempting to Restart Chrome!!!")
                browser.quit()
                browser.start_browser()

            print(f"Retrieving Page Unknown Error: `{url}` - {e}")

        if successful:
            try:
                print(f"Screenshotting {url}")
                signal.alarm(browser.page_timeout)  # Activate Time Out Alarm
                browser.screenshot(file=screenshot_file)
                signal.alarm(0)  # Turn Off Time Out Alarm
                print(f"Took Screenshot Of: `{url}` and saved to: {screenshot_file}")
            except TimeoutException:
                print(f"Screenshot Page Timed Out: {url}")
            except AlarmTimeoutException:
                print(f"Screenshot Page Timed Out Via Alarm: {url}")
                signal.alarm(0)  # Turn Off Time Out Alarm
            except StaleElementReferenceException:
                print(f"Screenshot Page Failed Due To Page Refresh: {url}")
            except Exception as e:
                print(f"Screenshot Page Failed Due To Unknown Error: `{url}` - {e}")
        else:
            print(f"Was unable to retrieve {url}")


if __name__ == "__main__":
    # TODO: Add Support For Feeds and Crawl Wait Time

    print("About to setup directories")
    # Setup Working Files
    setup()

    # Start Browser
    browser: Browser = Browser()

    # Load Robots Class If Pickled
    if os.path.exists(robots_pickle):
        browser.robots = pickle.load(open(robots_pickle, mode='rb'))

    # Import BlockLists
    if os.path.exists(complete_blocklist):
        browser.blocklist = import_blocklists()

    print("About to start browser")
    browser.headless = True
    browser.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36"
    browser.script_timeout = 80  # Default 40
    browser.page_timeout = 40  # Default 20
    browser.setup_browser()
    browser.start_browser()

    print("About to import URLs")
    agencies = pd.read_csv(os.path.join(working_dir, "agency-urls.csv"))
    datasets = pd.read_csv(os.path.join(working_dir, "datasets-urls.csv"))

    # test_crash: list = ["https://jerseyvillagepd.org/(X(1)S(hj4mma0lfyflknyuu5okfftu))/default.aspx?AspxAutoDetectCookieSupport=1"]
    agency_urls: list = agencies["homepage_url"].unique().tolist()
    dataset_urls: list = datasets["url"].unique().tolist()

    # screenshot_pages(urls=agency_urls, prefix="agencies_test_crash")
    print("Starting Screenshotting")
    print("Screenshotting Agencies...")
    screenshot_pages(urls=agency_urls, prefix="agencies")

    print("Screenshotting Datasets...")
    screenshot_pages(urls=dataset_urls, prefix="datasets")
    print("Finished Screenshotting")

    browser.quit()
    pickle.dump(browser.robots, open(robots_pickle, mode="wb+"))

    print("Done!!!")
