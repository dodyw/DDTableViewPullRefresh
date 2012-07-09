# DDTableViewPullRefresh
This is modified version of [Jesse Collis's forked version of EGOTableViewPullRefresh][url_jesse_collis]. The main purpose is to simplify file structure and make it easier to customize and integrate with the app we are working on.

Here I make PullToRefreshTableViewController as subclass of UIViewController instead of UITableViewController. By subclassing UIViewController we can now put controls in the screen.

The sample project is written using ARC.

![DDTableViewPullRefresh][img_ddtableviewpullrefresh]

## Installation

1. Add files in `PullToRefresh` folder in your project. You can drag and drop the folder from Finder.
2. Add `QuartzCore` framework in your project.
2. If you are using ARC, put compile flag: `-fno-objc-arc`.
3. Subclass your view controller from `PullToRefreshTableViewController`.
4. In your view controller, set the `tableView` rect, you may want to do this in `viewDidLoad` method. 
5. In your view controller, override `reloadTableViewDataSource`.

``` 
    // set tableview rect
    self.tableView.frame = CGRectMake(0, 100, 320, 260);
```

## License

(The MIT License)

Copyright (c) 2012 Dody Rachmat Wicaksono dodyrw@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[img_ddtableviewpullrefresh]: https://ddtableviewpullrefresh.s3.amazonaws.com/DDTableViewPullRefresh.png "B"
[url_jesse_collis]:https://github.com/jessedc/EGOTableViewPullRefresh

