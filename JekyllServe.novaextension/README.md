**Jekyll Serve** provides Task integration with the Jekyll serve, build, and clean commands.

Jekyll Serve integrates common Jekyll commands into the standard Nova task workflow, providing one-click or keyboard shortcut access to quickly perform these actions on your site.

## Usage

Add the extension to your Jekyll project as a task by:
- Select the **Project > Tasks > Edit Task…** menu item.
- Click the plus button in the **Tasks** header in the sidebar
- Select **Jekyll Serve** 

After adding the extension, you can now use the built-in Nova commands for your Jekyll project:

Run: `jekyll serve`  
Build: `jekyll build`  
Clean: `jekyll clean`

For full details on invoking actions in Nova, see [Invoking Actions](https://help.panic.com/nova/run-tasks/#invoking-actions) in the Nova Library.

### Configuration

You can customize many options, such as whether draft or unpublished posts are published.

Most options are fully explained in the extension interface but a few need a bit of further discussion:

#### Task Report
When configuring the JekyllServe task, selecting **On Run** from the **Open report** popup-menu will open a pane showing the log of the task running.

For the Run command, the text will include a clickable URL to the served Jekyll site.

#### Use 'bundle exec'
This option runs each command in the context of a Bundler bundle:  
`bundle exec jekyll serve`

Turn off this option to run the commands directly:  
`jekyll serve`

Because jekyll commands are often run using `bundle exec` this option is enabled by default.

#### Host
Using the local hostname of your computer, such as `mycomputer.local`, allows you to test your Jekyll site on other local devices, such as mobile devies.

You can find the local hostname of your Mac in the Sharing section of System Settings.

#### Port
If you edit multiple Jekyll site projects, setting a different port for each allows you to easily serve multiple sites simultaneously without conflicting ports.

----
### Acknowledgements

Ruby version switching is handled by an included copy of chruby.

chruby  
https://github.com/postmodern/chruby

Copyright (c) 2012-2013 Hal Brodigan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
