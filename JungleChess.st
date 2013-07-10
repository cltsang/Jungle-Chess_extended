<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2012年4月8日 at 下午08時07分19秒</time-stamp>


<component-created>
<name>JungleChess</name> <type>package</type>
</component-created><!-- Package JungleChess* -->


<component-created>
<name>JungleChess</name> <type>package</type>
</component-created>

<class>
<name>ChessPiece</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>owner square canBeEatenBy fig canJump canSwim canMoveDiagonally </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Wolf</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Dog</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleGame</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>board currentPlayer nextPlayer width height winner player1RemainChess player2RemainChess checkRemainChess jungleChessBoard controller extent player3RemainChess player4RemainChess nextNextPlayer playerList loser removePlayer monsterPosition monsterCount monsterMove </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>JungleGame</class-id>
<body></body>
</comment>

<class>
<name>Square</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chess coordinate fig selected corrdinate </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>PrivateSquare</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>true</private>
<indexed-type>none</indexed-type>
<inst-vars>owner </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Den</name>
<environment>Smalltalk</environment>
<super>PrivateSquare</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>occupy </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Elephant</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Lion</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Jaguar</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleGameView</name>
<environment>Smalltalk</environment>
<super>UI.CompositeView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Trap</name>
<environment>Smalltalk</environment>
<super>PrivateSquare</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Rat</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleChessBoard</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleGame jungleGameView message view </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Tiger</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>River</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Monster</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>canSwim </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name loser lose </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>SquareController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Ground</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleGameController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>selected </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>SquareView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessImage squareImage selected </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Crocodile</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>canSwim </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>SuperCat</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChess" selector="selected:">selected:aBool

<body package="JungleChess" selector="selected">selected

<body package="JungleChess" selector="fig:">fig: anInt

<body package="JungleChess" selector="chess">chess

<body package="JungleChess" selector="chess:">chess: anObject

<body package="JungleChess" selector="coordinate:">coordinate: aPoint

<body package="JungleChess" selector="fig">fig

<body package="JungleChess" selector="coordinate">coordinate
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>ChessPiece class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new
</methods>


<methods>
<class-id>ChessPiece</class-id> <category>accessing</category>

<body package="JungleChess" selector="canBeEatenBy">canBeEatenBy

<body package="JungleChess" selector="owner">owner

<body package="JungleChess" selector="square">square

<body package="JungleChess" selector="fig:">fig: anObject

<body package="JungleChess" selector="owner:">owner: aPlayer

<body package="JungleChess" selector="square:">square: aSquare

<body package="JungleChess" selector="fig">fig

<body package="JungleChess" selector="canBeEatenBy:">canBeEatenBy: aChessPiece
</methods>

<methods>
<class-id>ChessPiece</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canMoveDiagonally">canMoveDiagonally</body>

<body package="JungleChess" selector="canSwim">canSwim

<body package="JungleChess" selector="canJump:">canJump:aBool

<body package="JungleChess" selector="canJump">canJump

<body package="JungleChess" selector="canSwim:">canSwim:aBool

<body package="JungleChess" selector="initialize">initialize

<body package="JungleChess" selector="canMoveDiagonally:">canMoveDiagonally:aBool
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim">canSwim

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Rat</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Ground</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canJump">canJump

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Tiger</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChess" selector="name">name

<body package="JungleChess" selector="lose:">lose:aBool

<body package="JungleChess" selector="name:">name: aStr

<body package="JungleChess" selector="lose">lose
</methods>


<methods>
<class-id>JungleChessBoard class</class-id> <category>interface specs</category>

<body package="JungleChess" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>JungleChessBoard</class-id> <category>actions</category>

<body package="JungleChess" selector="view">view

<body package="JungleChess" selector="restart">restart

<body package="JungleChess" selector="jungleGameView">jungleGameView
</methods>

<methods>
<class-id>JungleChessBoard</class-id> <category>aspects</category>

<body package="JungleChess" selector="message">message
</methods>


<methods>
<class-id>JungleGameController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="clickAt:">clickAt: aPoint

<body package="JungleChess" selector="movePiece:">movePiece: aPoint

<body package="JungleChess" selector="selectPiece:">selectPiece:aPoint

<body package="JungleChess" selector="initialize">initialize

<body package="JungleChess" selector="reselect:">reselect: aPoint

<body package="JungleChess" selector="unselected:">unselected:aPoint

<body package="JungleChess" selector="selected:">selected:aPoint

<body package="JungleChess" selector="selected">selected
</methods>


<methods>
<class-id>PrivateSquare</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>PrivateSquare</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer

<body package="JungleChess" selector="owner">owner
</methods>


<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>Monster</class-id> <category>accessing</category>

<body package="JungleChess" selector="canMoveDiagonally">canMoveDiagonally
</methods>

<methods>
<class-id>Monster</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim">canSwim

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>JungleGame class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new

<body package="JungleChess" selector="extent:">extent: aPoint
</methods>


<methods>
<class-id>JungleGame</class-id> <category>accessing</category>

<body package="JungleChess" selector="removePlayer">removePlayer

<body package="JungleChess" selector="monsterCount:">monsterCount:anInt

<body package="JungleChess" selector="width:">width: anObject

<body package="JungleChess" selector="controller:">controller: aController

<body package="JungleChess" selector="height:">height: anObject

<body package="JungleChess" selector="monsterMove">monsterMove

<body package="JungleChess" selector="monsterPosition:">monsterPosition:aPoint

<body package="JungleChess" selector="board">board

<body package="JungleChess" selector="monsterMove:">monsterMove:aPoint

<body package="JungleChess" selector="jungleChessBoard">jungleChessBoard

<body package="JungleChess" selector="playerList:">playerList: anObject

<body package="JungleChess" selector="at:">at: aPoint

<body package="JungleChess" selector="removePlayer:">removePlayer:anInt

<body package="JungleChess" selector="restart">restart

<body package="JungleChess" selector="currentPlayer:">currentPlayer: anInt

<body package="JungleChess" selector="monsterCount">monsterCount

<body package="JungleChess" selector="playerList">playerList

<body package="JungleChess" selector="outOfBound:">outOfBound:aPointTo

<body package="JungleChess" selector="isMoveValid:isMoveValid:">isMoveValid: aPointFrom isMoveValid: aPointTo

<body package="JungleChess" selector="board:">board: anObject

<body package="JungleChess" selector="jungleChessBoard:">jungleChessBoard: aJungleChessBoard

<body package="JungleChess" selector="currentPlayer">currentPlayer

<body package="JungleChess" selector="height">height

<body package="JungleChess" selector="width">width

<body package="JungleChess" selector="controller">controller
</methods>

<methods>
<class-id>JungleGame</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="extent:">extent: aPoint

<body package="JungleChess" selector="makeMove:makeMove:">makeMove: aPointFrom makeMove: aPointTo

<body package="JungleChess" selector="winner:">winner:aPlayer

<body package="JungleChess" selector="checkRemainChess:">checkRemainChess: anInt

<body package="JungleChess" selector="player2RemainChess:">player2RemainChess:anInt

<body package="JungleChess" selector="player1RemainChess:">player1RemainChess:anInt

<body package="JungleChess" selector="player3RemainChess:">player3RemainChess:anInt

<body package="JungleChess" selector="player4RemainChess:">player4RemainChess:anInt

<body package="JungleChess" selector="player4RemainChess">player4RemainChess

<body package="JungleChess" selector="player3RemainChess">player3RemainChess

<body package="JungleChess" selector="player2RemainChess">player2RemainChess

<body package="JungleChess" selector="winner">winner

<body package="JungleChess" selector="initialize">initialize

<body package="JungleChess" selector="checkRemainChess">checkRemainChess

<body package="JungleChess" selector="loser:">loser:anInt

<body package="JungleChess" selector="extent">extent

<body package="JungleChess" selector="player1RemainChess">player1RemainChess

<body package="JungleChess" selector="monsterPosition">monsterPosition

<body package="JungleChess" selector="loser">loser
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>SquareController</class-id> <category>events</category>

<body package="JungleChess" selector="redButtonPressedEvent:">redButtonPressedEvent: event
</methods>


<methods>
<class-id>SquareView class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="model:">model: aSquare
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChess" selector="selected:">selected: aBool

<body package="JungleChess" selector="selected">selected

<body package="JungleChess" selector="model:">model: aSquare
</methods>

<methods>
<class-id>SquareView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>SquareView</class-id> <category>displaying</category>

<body package="JungleChess" selector="displayOn:">displayOn: aGraphicsContext
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>SuperCat</class-id> <category>accessing</category>

<body package="JungleChess" selector="canMoveDiagonally">canMoveDiagonally

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>

<methods>
<class-id>SuperCat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Wolf</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize

<body package="JungleChess" selector="canJump">canJump
</methods>

<methods>
<class-id>Lion</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChess" selector="occupy:">occupy:aBool

<body package="JungleChess" selector="occupy">occupy

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Crocodile</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim">canSwim

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Crocodile</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Dog</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>JungleGameView</class-id> <category>accessing</category>

<body package="JungleChess" selector="setView:model:">setView:aPoint

<body package="JungleChess" selector="model:">model: aJungleGame
</methods>

<methods>
<class-id>JungleGameView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>JungleGameView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>River</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Elephant</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize
</methods>

<methods>
<class-id>Jaguar</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer
</methods>



</st-source>