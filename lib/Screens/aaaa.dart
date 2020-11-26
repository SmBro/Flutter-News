 return DefaultTabController(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 30,
        // elevation: 0.9,
        centerTitle: true,
        title: Text(
          'News App',
          style: TextStyle(
              color: Colors.black45,
              fontFamily: 'Nutino',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),

        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/notification.svg',
              width: 40,
              color: Colors.black87,
              height: 25,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        leading: new IconButton(
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 40,
              color: Colors.black87,
              height: 28,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('Tab 1'),
              ),
              Tab(
                child: Text('Investment'),
              ),
              Tab(
                child: Text('Your Earning'),
              ),
              Tab(
                child: Text('Current Balance'),
              ),
              Tab(
                child: Text('Tab 5'),
              ),
              Tab(
                child: Text('Tab 6'),
              )
            ],
          ),
        ),
      ),
      drawer: new Drawer(
        child: MainDrawer(),
      ),
      body: PreferredSize(
        preferredSize: null,
        child: MainButtomBar(),
      ),
    ));
