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

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChess" selector="selected:">selected:aBool	selected := aBool.</body>

<body package="JungleChess" selector="selected">selected	^selected.</body>

<body package="JungleChess" selector="fig:">fig: anInt	fig := anInt.</body>

<body package="JungleChess" selector="chess">chess	^chess</body>

<body package="JungleChess" selector="chess:">chess: anObject	chess := anObject</body>

<body package="JungleChess" selector="coordinate:">coordinate: aPoint		coordinate := aPoint.</body>

<body package="JungleChess" selector="fig">fig	^fig</body>

<body package="JungleChess" selector="coordinate">coordinate	^coordinate	 	</body>
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	selected:= false.	chess := nil.	corrdinate := nil.	fig :=  nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>ChessPiece class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ChessPiece</class-id> <category>accessing</category>

<body package="JungleChess" selector="canBeEatenBy">canBeEatenBy	^canBeEatenBy</body>

<body package="JungleChess" selector="owner">owner	^owner</body>

<body package="JungleChess" selector="square">square	^square</body>

<body package="JungleChess" selector="fig:">fig: anObject	fig := anObject</body>

<body package="JungleChess" selector="owner:">owner: aPlayer	owner := aPlayer.</body>

<body package="JungleChess" selector="square:">square: aSquare	square := aSquare.</body>

<body package="JungleChess" selector="fig">fig	^fig</body>

<body package="JungleChess" selector="canBeEatenBy:">canBeEatenBy: aChessPiece	canBeEatenBy := aChessPiece.</body>
</methods>

<methods>
<class-id>ChessPiece</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canMoveDiagonally">canMoveDiagonally</body>

<body package="JungleChess" selector="canSwim">canSwim	^canSwim.</body>

<body package="JungleChess" selector="canJump:">canJump:aBool	canSwim:=aBool</body>

<body package="JungleChess" selector="canJump">canJump	^canJump</body>

<body package="JungleChess" selector="canSwim:">canSwim:aBool	canSwim:=aBool.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	owner := nil.	square :=nil.	canBeEatenBy := nil.	canJump:=false.	canSwim:=false.	canMoveDiagonally:=false.		" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="JungleChess" selector="canMoveDiagonally:">canMoveDiagonally:aBool	canMoveDiagonally:=aBool.</body>
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim">canSwim	^true.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canSwim:= true.	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Rat';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Dog';			at: 7 put: 'SuperCat';			at: 8 put: 'Monster';			at: 9 put: 'Crocodile'.^self</body>
</methods>

<methods>
<class-id>Rat</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 1.		].		(owner name = 'Player Black') ifTrue: [					fig := 2.		].		(owner name = 'Player Red') ifTrue: [					fig := 3.		].		(owner name = 'Player Green') ifTrue: [					fig := 4.		].</body>
</methods>


<methods>
<class-id>Ground</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	fig := 1.	^self</body>
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canJump">canJump	^true.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canJump:=true.	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Monster';			at: 5 put: 'Crocodile'.	^self</body>
</methods>

<methods>
<class-id>Tiger</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 21.		].		(owner name = 'Player Black') ifTrue: [					fig := 22.		].		(owner name = 'Player Red') ifTrue: [					fig := 23.		].		(owner name = 'Player Green') ifTrue: [					fig := 24.		].</body>
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	" *** And replace this comment with additional initialization code *** "	lose:= false.	^self</body>
</methods>

<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChess" selector="name">name	^name</body>

<body package="JungleChess" selector="lose:">lose:aBool	lose:= aBool.</body>

<body package="JungleChess" selector="name:">name: aStr	name := aStr .</body>

<body package="JungleChess" selector="lose">lose	^lose.</body>
</methods>


<methods>
<class-id>JungleChessBoard class</class-id> <category>interface specs</category>

<body package="JungleChess" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Unlabeled Canvas' 			#min: #(#{Core.Point} 675 705 ) 			#max: #(#{Core.Point} 675 705 ) 			#bounds: #(#{Graphics.Rectangle} 472 180 1147 885 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 0 0 80 30 ) 					#name: #ActionButton1 					#model: #restart 					#label: 'New Game' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 81 1 674 29 ) 					#name: #InputField1 					#model: #message 					#type: #string ) 				#(#{UI.ArbitraryComponentSpec} 					#layout: #(#{Graphics.Rectangle} 0 30 675 705 ) 					#name: #ViewHolder1 					#component: #jungleGameView ) ) ) )</body>
</methods>


<methods>
<class-id>JungleChessBoard</class-id> <category>actions</category>

<body package="JungleChess" selector="view">view	^jungleGameView</body>

<body package="JungleChess" selector="restart">restart	"This stub method was generated by UIDefiner"	jungleGame restart.	self message value: 'NEW GAME'.	^self</body>

<body package="JungleChess" selector="jungleGameView">jungleGameView	jungleGame := JungleGame extent: 15@15.	jungleGame jungleChessBoard: self.	jungleGameView := JungleGameView model: jungleGame.	jungleGame controller: (jungleGameView controller).	^jungleGameView</body>
</methods>

<methods>
<class-id>JungleChessBoard</class-id> <category>aspects</category>

<body package="JungleChess" selector="message">message	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^message isNil		ifTrue:			[message := String new asValue]		ifFalse:			[message]</body>
</methods>


<methods>
<class-id>JungleGameController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="clickAt:">clickAt: aPoint	"click -&gt; check -&gt;update"	| updated |	Transcript cr; show:(model checkRemainChess:1) printString.	"current := model currentPlayer."	updated := false.	(model currentPlayer = 1)		ifTrue:[model jungleChessBoard message value:'It is Player Blue turn' .].	(model currentPlayer = 2)		ifTrue:[model jungleChessBoard message value:'It is Player Black turn' .].	(model currentPlayer = 3)		ifTrue:[model jungleChessBoard message value:'It is Player Red turn' .].	(model currentPlayer = 4)		ifTrue:[model jungleChessBoard message value:'It is Player Green turn' .].	"------------------------------click------------------------------"	(self selected = nil)ifTrue:[ 	"have not selected yet ---- selectPiece"        ((model  at: aPoint) chess ~= nil) ifTrue:[            "check if this piece is owned by currentPlayer"            ((((model at: aPoint) chess) owner) = (model playerList at:(model currentPlayer)))ifTrue:[                    self selectPiece: aPoint.                    self selected: aPoint.            ]		ifFalse:[model jungleChessBoard message value:'This is not your chess!'.].		].	]	ifFalse:[	"selected and selected same point ---- unselected"		(self selected = aPoint)ifTrue:[			self unselected: aPoint.			self selected: nil.		]		ifFalse:[	            ((model at: aPoint) chess ~= nil)ifTrue:[                "selected and selected another one with same owner  ---- reselect"                (((model at: aPoint) chess) owner = ((model at: (self selected)) chess) owner)ifTrue:[                    self reselect: aPoint.                    self selected: aPoint.                ]                 ifFalse:[                    "selected and selected a opponent's chess ---- movePiece"                    (model isMoveValid: (self selected) isMoveValid: (aPoint)) ifTrue:[			 "a chess is eaten"					Transcript cr; show:(model at:(aPoint) )chess owner name.					((model at:(aPoint) )chess owner name= 'Player Blue')					ifTrue:[model player1RemainChess:((model checkRemainChess:1) - 1). ].					((model at:(aPoint) )chess owner name= 'Player Black')					ifTrue:[model player2RemainChess:((model checkRemainChess:2) - 1). ].					((model at:(aPoint) )chess owner name= 'Player Red')					ifTrue:[model player3RemainChess:((model checkRemainChess: 3) - 1). ].					((model at:(aPoint) )chess owner name= 'Player Green')					ifTrue:[model player4RemainChess:((model checkRemainChess:4) - 1). ].	                    		self movePiece:aPoint.                    		self selected: nil.										updated := true.                    ]                    ifFalse:[ model jungleChessBoard message value:'Your chess cannot go here!'.].                ].            ]             ifFalse:[			"selected and select a nil point ---- movePiece"                (model isMoveValid: (self selected) isMoveValid: (aPoint)) ifTrue:[                    self movePiece:aPoint.                    self selected: nil.			  updated := true.                ]                ifFalse:[model jungleChessBoard message value:'Your chess cannot go here!'.].            ].		].	]."------------------------------check------------------------------"	"loser checking"	( ((model playerList at:1 )lose= false) )		ifTrue:[			(((model checkRemainChess:1) = 0) | ((model at: 8@15)occupy))ifTrue:[				(model playerList at:1 )lose: true.				model removePlayer:1.				model loser: ((model loser )+1).			].		].	( ((model playerList at:2 )lose= false))		ifTrue:[			(((model checkRemainChess:2) = 0) | ((model at: 1@8)occupy)) ifTrue:[				(model playerList at:2 )lose: true.				model removePlayer:2.				model loser: ((model loser )+1).			].		].	( ((model playerList at:3 )lose= false ))		ifTrue:[			(((model checkRemainChess:3) = 0) | ((model at: 8@1)occupy))ifTrue:[				(model playerList at:3)lose: true.				model removePlayer:3.				model loser: ((model loser )+1).			].		].	( ((model playerList at:4 )lose= false))		ifTrue:[			(((model checkRemainChess:4) = 0) | ((model at: 15@8)occupy))ifTrue:[				(model playerList at:4 )lose: true.				model removePlayer:4.				model loser: ((model loser )+1).			].		].	"monster count"		((updated)&amp;(model loser &lt; 3))ifTrue:[		model monsterCount: ((model monsterCount ) + 1).					].	"loser checking"	( ((model playerList at:1 )lose= false) )		ifTrue:[			(((model checkRemainChess:1) = 0) | ((model at: 8@15)occupy))ifTrue:[				(model playerList at:1 )lose: true.				model removePlayer:1.				model loser: ((model loser )+1).			].		].	( ((model playerList at:2 )lose= false))		ifTrue:[			(((model checkRemainChess:2) = 0) | ((model at: 1@8)occupy)) ifTrue:[				(model playerList at:2 )lose: true.				model removePlayer:2.				model loser: ((model loser )+1).			].		].	( ((model playerList at:3 )lose= false ))		ifTrue:[			(((model checkRemainChess:3) = 0) | ((model at: 8@1)occupy))ifTrue:[				(model playerList at:3)lose: true.				model removePlayer:3.				model loser: ((model loser )+1).			].		].	( ((model playerList at:4 )lose= false))		ifTrue:[			(((model checkRemainChess:4) = 0) | ((model at: 15@8)occupy))ifTrue:[				(model playerList at:4 )lose: true.				model removePlayer:4.				model loser: ((model loser )+1).			].		].	"------------------------------update------------------------------"	(updated)	ifTrue:[							 		model currentPlayer: (model currentPlayer + 1).                              "next player"		((model playerList at:(model currentPlayer))lose)		ifTrue:[       			model currentPlayer: (model currentPlayer + 1).                        "next next player"			((model playerList at:(model currentPlayer))lose)			ifTrue:[       				model currentPlayer: (model currentPlayer + 1).                        "next next player"				].		].		(model currentPlayer = 1)			ifTrue:[model jungleChessBoard message value:'It is Player Blue turn' .].		(model currentPlayer = 2)			ifTrue:[model jungleChessBoard message value:'It is Player Black turn' .].		(model currentPlayer = 3)			ifTrue:[model jungleChessBoard message value:'It is Player Red turn' .].		(model currentPlayer = 4)			ifTrue:[model jungleChessBoard message value:'It is Player Green turn' .].	].		"end game checking"	(model loser = 3)ifTrue:[		1 to: 4 do:[:x|			((model playerList at: x) lose)ifFalse:[				model winner: (model playerList at: x).				model jungleChessBoard message value:'Winner is ' , ((model playerList at: x) name ) .						].		].	].</body>

<body package="JungleChess" selector="movePiece:">movePiece: aPoint	model makeMove:(self selected) makeMove:(aPoint).	(model  at: (self selected))selected: false.	(model  at: (self selected)) changed.	(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="selectPiece:">selectPiece:aPoint		Transcript cr; show: 'selectePiece'.				(model  at: aPoint) selected: true.		(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	selected := nil.	^self</body>

<body package="JungleChess" selector="reselect:">reselect: aPoint		Transcript cr; show: 'reselect'.		"unselected the last chess"		(model  at: (self selected)) selected: false.		(model  at: (self selected)) changed.		"pick a new one"		(model at: aPoint) selected: true.		(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="unselected:">unselected:aPoint		Transcript cr; show: 'unselected'.		(model  at: aPoint) selected: False.		(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="selected:">selected:aPoint		selected:= aPoint. </body>

<body package="JungleChess" selector="selected">selected	^selected.</body>
</methods>


<methods>
<class-id>PrivateSquare</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	owner := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>PrivateSquare</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer	owner := aPlayer.</body>

<body package="JungleChess" selector="owner">owner	^owner</body>
</methods>


<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	fig := 7.	^self</body>
</methods>


<methods>
<class-id>Monster</class-id> <category>accessing</category>

<body package="JungleChess" selector="canMoveDiagonally">canMoveDiagonally	^true.</body>
</methods>

<methods>
<class-id>Monster</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim">canSwim	^true.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	canSwim := nil.	" *** And replace this comment with additional initialization code *** "	canBeEatenBy := Dictionary new.	fig := 37.	^self</body>
</methods>


<methods>
<class-id>JungleGame class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="JungleChess" selector="extent:">extent: aPoint		^super new extent: aPoint.</body>
</methods>


<methods>
<class-id>JungleGame</class-id> <category>accessing</category>

<body package="JungleChess" selector="removePlayer">removePlayer	^removePlayer.</body>

<body package="JungleChess" selector="monsterCount:">monsterCount:anInt		( anInt &gt;= ( 4 - ( self loser )))ifTrue:[		self monsterMove:(self monsterPosition).				self monsterCount: 0.			Transcript cr; show:'monsterCount'.	]	ifFalse:[		monsterCount:=anInt.	].</body>

<body package="JungleChess" selector="width:">width: anObject	width := anObject</body>

<body package="JungleChess" selector="controller:">controller: aController	controller := aController</body>

<body package="JungleChess" selector="height:">height: anObject	height := anObject</body>

<body package="JungleChess" selector="monsterMove">monsterMove	^monsterMove.</body>

<body package="JungleChess" selector="monsterPosition:">monsterPosition:aPoint	monsterPosition:= aPoint</body>

<body package="JungleChess" selector="board">board	^board</body>

<body package="JungleChess" selector="monsterMove:">monsterMove:aPoint	|done xRand yRand|	Transcript cr; show:'monsterMove'.	done:= false.	-1 to:1 do:[ :i |		-1 to: 1 do:[ :j |			(self outOfBound:(((aPoint x) + i)@((aPoint y) + j)))ifFalse:[				(((self at: (((aPoint x) + i)@((aPoint y) + j )))chess ~= nil) &amp; ( (i~=0) | (j~= 0) )&amp;(done = false))ifTrue:[					((self at:(((aPoint x) + i)@((aPoint y) + j )) )chess owner name= 'Player Blue')ifTrue:[							self player1RemainChess:((self checkRemainChess:1) - 1). ].					((self at:(((aPoint x) + i)@((aPoint y) + j )) )chess owner name= 'Player Black')ifTrue:[							self player2RemainChess:((self checkRemainChess:2) - 1). ].					((self at:(((aPoint x) + i)@((aPoint y) + j )) )chess owner name= 'Player Red')ifTrue:[							self player3RemainChess:((self checkRemainChess: 3) - 1). ].					((self at:(((aPoint x) + i)@((aPoint y) + j )) )chess owner name= 'Player Green')ifTrue:[							self player4RemainChess:((self checkRemainChess:4) - 1). ].					self makeMove:aPoint makeMove:  (((aPoint x) + i)@((aPoint y) + j )).					self monsterPosition:  (((aPoint x) + i)@((aPoint y) + j )).					done:= true.									].			].		].	].	(done)ifFalse:[		xRand := ((Random new next * 3 + 1)  - 2 ) truncated.		yRand := ((Random new next * 3 + 1)  - 2 ) truncated .		( ( xRand = 0 ) &amp; ( yRand = 0 ) )ifTrue:[				(self outOfBound:(((aPoint x) + 1)@((aPoint y) + 1)))ifFalse:[					self makeMove:aPoint makeMove:  (((aPoint x) + 1)@((aPoint y) + 1)).					self monsterPosition:  (((aPoint x) + 1)@((aPoint y) + 1 )).					]				ifTrue:[					self makeMove:aPoint makeMove:  (((aPoint x) - 1)@((aPoint y) - 1)).					self monsterPosition:  (((aPoint x) - 1)@((aPoint y) - 1 )).					].							]		ifFalse:[				(self outOfBound:((aPoint x + xRand)@(aPoint y + yRand )))ifFalse:[					self makeMove:aPoint makeMove:  ((aPoint x + xRand)@(aPoint y + yRand )).					self monsterPosition:  (((aPoint x) + xRand)@((aPoint y) + yRand )).					]				ifTrue:[					self makeMove:aPoint makeMove:  ((aPoint x - xRand)@(aPoint y - yRand )).					self monsterPosition:  (((aPoint x) - xRand)@((aPoint y) - yRand )).											].			].	].</body>

<body package="JungleChess" selector="jungleChessBoard">jungleChessBoard	^jungleChessBoard</body>

<body package="JungleChess" selector="playerList:">playerList: anObject	playerList:= anObject</body>

<body package="JungleChess" selector="at:">at: aPoint	^(board at: aPoint y) at: aPoint x.</body>

<body package="JungleChess" selector="removePlayer:">removePlayer:anInt	    | view wrapper offset size aChess|    size := (1 / width)@(1 / height).    	"remove Den and Trap"	(anInt  = 1)ifTrue:[ 		aChess := ((board at: 14) at: 8) chess.		(board at: 14) at: 8 put: Ground new.		((board at: 14) at: 8) coordinate: 8@14.		((board at: 14) at: 8) chess: aChess.             view := SquareView model: ((board at: 14) at: 8).             offset := (8 - 1 / width)@(14 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		7 to: 9 do:[:i|			aChess := ((board at: 15) at: i) chess.			(board at: 15) at: i put: Ground new.			((board at: 15) at: i) coordinate: i@15.			((board at: 15) at: i) chess: aChess.           		 view := SquareView model: ((board at: 15) at: i).            	 offset := (i - 1 / width)@(15 - 1 / height).            	 wrapper := BoundedWrapper on: view in: (offset extent: size).            	(self jungleChessBoard view) addWrapper: wrapper.		].	].	(anInt  = 2)ifTrue:[ 		aChess := ((board at: 8) at: 2) chess.		(board at: 8) at: 2 put: Ground new.            ((board at: 8) at: 2) coordinate: 2@8.		((board at: 8) at: 2) chess: aChess.             view := SquareView model: ((board at: 8) at: 2).             offset := (2 - 1 / width)@(8 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		7 to: 9 do:[:i|			aChess := ((board at: i) at: 1) chess.			(board at: i) at: 1 put: Ground new.			((board at: i) at: 1) coordinate: 1@i.			((board at: i) at: 1) chess: aChess.           	 	 view := SquareView model: ((board at: i) at: 1).          		 offset := (1 - 1 / width)@(i - 1 / height).             	wrapper := BoundedWrapper on: view in: (offset extent: size).            	(self jungleChessBoard view) addWrapper: wrapper.		].	].	(anInt  = 3)ifTrue:[ 			aChess := ((board at:2) at: 8) chess.			(board at: 2) at: 8 put: Ground new.			((board at: 2) at: 8) coordinate: 8@2.			((board at: 2) at: 8) chess: aChess.            	 view := SquareView model: ((board at: 2) at: 8).             	offset := (8 - 1 / width)@(2 - 1 / height).             	wrapper := BoundedWrapper on: view in: (offset extent: size).            	(self jungleChessBoard view) addWrapper: wrapper.            			7 to: 9 do:[:i|				aChess := ((board at: 1) at: i) chess.				(board at: 1) at: i put: Ground new.				((board at: 1) at: i) coordinate: i@1.				((board at: 1) at: i) chess: aChess.             		view := SquareView model: ((board at: 1) at: i).             		offset := (i - 1 / width)@(1 - 1 / height).             		wrapper := BoundedWrapper on: view in: (offset extent: size).            		(self jungleChessBoard view) addWrapper: wrapper.		].	].	(anInt  = 4)ifTrue:[ 			aChess := ((board at: 8) at: 14) chess.			(board at: 8) at: 14 put: Ground new.			((board at: 8) at: 14) coordinate: 14@8.			((board at: 8) at: 14) chess: aChess.             	view := SquareView model: ((board at: 8) at: 14).             	offset := (14 - 1 / width)@(8 - 1 / height).             	wrapper := BoundedWrapper on: view in: (offset extent: size).            	(self jungleChessBoard view) addWrapper: wrapper.			7 to: 9 do:[:i|				aChess := ((board at: i) at: 15) chess.				(board at: i) at: 15 put: Ground new.				((board at: i) at:15) coordinate: 15@i.				((board at: i) at: 15) chess: aChess.             		view := SquareView model: ((board at: i) at: 15).             		offset := (15 - 1 / width)@(i - 1 / height).             		wrapper := BoundedWrapper on: view in: (offset extent: size).           	 		(self jungleChessBoard view) addWrapper: wrapper.		].	].		"remove Chess"	1 to:15 do:[:i|		1 to: 15 do:[:j|			((self at: i@j )chess ~= nil)ifTrue:[				((self at: i@j )chess owner  = (playerList at:anInt))ifTrue:[						(self at: i@j )chess: nil.									(self at: i@j ) changed.				].			].		].	].</body>

<body package="JungleChess" selector="restart">restart	    | player1 player2 player3 player4 aPiece   view wrapper offset size |	"-----------------------------releast the selected chess-----------------------------"	(controller selected ~=nil)ifTrue:[	(self at:(controller selected)) selected: false.	controller selected: nil.	].		"-----------------------------reset player-----------------------------"	player1 := (Player new).	player1 name: 'Player Blue'.	player2 := (Player new).	player2 name: 'Player Black'.	player3 := (Player new).	player3 name: 'Player Red'.	player4 := (Player new).	player4 name: 'Player Green'.	currentPlayer:= 1.		player1RemainChess:= 9.	player2RemainChess:= 9.	player3RemainChess:= 9.	player4RemainChess:= 9.		"-----------------------------reset winner &amp; loser-----------------------------"	winner:= nil.	loser:=0.    "-----------------------------reset Den and Trap-----------------------------"    	size := (1 / width)@(1 / height).        "-----------------------------reset Player1(Blue)-----------------------------"	((playerList at:1 )lose)ifTrue:[		(board at: 14) at: 8 put: Trap new.		((board at: 14) at: 8) coordinate: 8@14.		((board at: 14) at: 8) owner:player1.             view := SquareView model: ((board at: 14) at: 8).             offset := (8 - 1 / width)@(14 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 15) at: 7 put: Trap new.		((board at: 15) at: 7) coordinate: 7@15.		((board at: 15) at: 7) owner:player1.             view := SquareView model: ((board at: 15) at:7).             offset := (7 - 1 / width)@(15 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 15) at: 9 put: Trap new.		((board at: 15) at: 9) coordinate: 9@15.		((board at: 15) at: 9) owner:player1.             view := SquareView model: ((board at: 15) at: 9).             offset := (9 - 1 / width)@(15 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 15) at: 8 put: Den new.		((board at: 15) at: 8) coordinate: 8@15.		((board at: 15) at: 8) owner:player1.             view := SquareView model: ((board at: 15) at: 8).             offset := (8 - 1 / width)@(15 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.	].    "-----------------------------reset Player2(Black)-----------------------------"	((playerList at:2 )lose)ifTrue:[		(board at: 7) at: 1 put: Trap new.		((board at: 7) at: 1) coordinate: 1@7.		((board at: 7) at: 1) owner: player2.             view := SquareView model: ((board at: 7) at: 1).             offset := (1 - 1 / width)@(7 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 9) at: 1 put: Trap new.		((board at: 9) at: 1) coordinate: 1@9.		((board at: 9) at: 1) owner: player2.             view := SquareView model: ((board at: 9) at:1).             offset := (1 - 1 / width)@(9 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 8) at: 2 put: Trap new.		((board at: 8) at: 2) coordinate: 2@8.		((board at: 8) at: 2) owner: player2.             view := SquareView model: ((board at: 8) at: 2).             offset := (2 - 1 / width)@(8 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 8) at: 1 put: Den new.		((board at: 8) at: 1) coordinate: 1@8.		((board at: 8) at: 1) owner: player2.             view := SquareView model: ((board at: 8) at: 1).             offset := (1 - 1 / width)@(8 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.	].		 "-----------------------------reset Player3(Red)-----------------------------"	((playerList at:3 )lose)ifTrue:[		(board at: 1) at: 7 put: Trap new.		((board at:1) at: 7) coordinate: 7@1.		((board at: 1) at: 7) owner: player3.             view := SquareView model: ((board at: 1) at: 7).             offset := (7 - 1 / width)@(1 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 1) at: 9 put: Trap new.		((board at: 1) at: 9) coordinate: 9@1.		((board at: 1) at: 9) owner: player3.             view := SquareView model: ((board at: 1) at:9).             offset := (9 - 1 / width)@(1 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 2) at: 8 put: Trap new.		((board at: 2) at: 8) coordinate: 8@2.		((board at: 2) at: 8) owner: player3.             view := SquareView model: ((board at: 2) at: 8).             offset := (8 - 1 / width)@(2 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 1) at: 8 put: Den new.		((board at: 1) at: 8) coordinate: 8@1.		((board at: 1) at: 8) owner: player3.             view := SquareView model: ((board at: 1) at: 8).             offset := (8 - 1 / width)@(1 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.	].    	"-----------------------------reset Player4(Green)-----------------------------"	((playerList at:4 )lose)ifTrue:[		(board at: 7) at: 15 put: Trap new.		((board at: 7) at: 15) coordinate: 15@7.		((board at: 7) at: 15) owner: player4.             view := SquareView model: ((board at: 7) at: 15).             offset := (15 - 1 / width)@(7 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 9) at: 15 put: Trap new.		((board at: 9) at: 15) coordinate: 15@9.		((board at: 9) at: 15) owner: player4.             view := SquareView model: ((board at: 9) at:15).             offset := (15 - 1 / width)@(9- 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 8) at: 14 put: Trap new.		((board at: 8) at: 14) coordinate: 14@8.		((board at: 8) at: 14) owner: player4.             view := SquareView model: ((board at: 8) at: 14).             offset := (14 - 1 / width)@(8 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.		(board at: 8) at: 15 put: Den new.		((board at: 8) at: 15) coordinate: 15@8.		((board at: 8) at: 15) owner: player4.             view := SquareView model: ((board at: 8) at: 15).             offset := (15 - 1 / width)@(8 - 1 / height).             wrapper := BoundedWrapper on: view in: (offset extent: size).            (self jungleChessBoard view) addWrapper: wrapper.	].    "-----------------------------reset player list-----------------------------"	playerList:= Array new:4.	playerList				at: 1 put: player1;				at: 2 put: player2;				at: 3 put: player3;				at: 4 put: player4.    "-----------------------------reset all chess-----------------------------"    1 to: height do: [:y |        1 to: width do:[:x |            (self at: x@y) chess: nil.        ].    ].        	aPiece := Monster new.	(((board at: 8) at: 8)) chess: aPiece.	monsterPosition:= 8@8.	monsterCount:=0.	"-----------------------------Player 1(Blue)-----------------------------"    aPiece := Lion new.    aPiece owner: player1.	(((board at: 14) at: 10)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player1.	(((board at: 14) at: 6)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player1.	(((board at: 13) at: 9)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player1.	(((board at: 13) at: 7)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player1.	(((board at: 13) at: 11)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player1.	(((board at: 12) at: 10)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player1.	(((board at: 12) at: 6)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player1.	(((board at: 13) at: 5)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player1.	(((board at: 11) at: 8)) chess: aPiece.	"-----------------------------Player 2(Black)-----------------------------"    aPiece := Lion new.    aPiece owner: player2.	(((board at: 10) at: 2)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player2.	(((board at:6) at: 2)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player2.	(((board at: 9) at: 3)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player2.	(((board at: 7) at: 3)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player2.	(((board at: 11) at: 3)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player2.	(((board at: 10) at: 4)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player2.	(((board at: 6) at: 4)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player2.	(((board at: 5) at: 3)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player2.	(((board at: 8) at: 5)) chess: aPiece.	"-----------------------------Player 3(Red)-----------------------------"    aPiece := Lion new.    aPiece owner: player3.	(((board at: 2) at: 6)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player3.	(((board at: 2) at: 10)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player3.	(((board at: 3) at: 7)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player3.	(((board at: 3) at: 9)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player3.	(((board at: 3) at: 5)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player3.	(((board at: 4) at: 6)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player3.	(((board at: 4) at: 10)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player3.	(((board at: 3) at: 11)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player3.	(((board at: 5) at: 8)) chess: aPiece.	"-----------------------------Player 4(Green)-----------------------------"    aPiece := Lion new.    aPiece owner: player4.	(((board at: 6) at: 14)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player4.	(((board at: 10) at: 14)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player4.	(((board at: 7) at: 13)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player4.	(((board at: 9) at: 13)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player4.	(((board at: 5) at: 13)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player4.	(((board at: 6) at: 12)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player4.	(((board at: 10) at: 12)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player4.	(((board at: 11) at: 13)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player4.	(((board at: 8) at: 11)) chess: aPiece.    ^self changed.</body>

<body package="JungleChess" selector="currentPlayer:">currentPlayer: anInt	(anInt &lt;= 4)ifTrue:[		currentPlayer := anInt.	]	ifFalse:[		currentPlayer:= anInt - 4.	].</body>

<body package="JungleChess" selector="monsterCount">monsterCount	^monsterCount	</body>

<body package="JungleChess" selector="playerList">playerList		^playerList.</body>

<body package="JungleChess" selector="outOfBound:">outOfBound:aPointTo	"Out Of Bound Test"	(((aPointTo x ) &lt; 0 ) | ((aPointTo y) &lt;0) |((aPointTo y) &gt; 15)|((aPointTo x) &gt;15) )ifTrue:[^true.].	((aPointTo x) + (aPointTo y) = 6)ifTrue:[^true.].	((aPointTo x) + (aPointTo y) = 7)ifTrue:[^true.].		((aPointTo x) + (aPointTo y) = 25)ifTrue:[^true.].	((aPointTo x) + (aPointTo y) = 26)ifTrue:[^true.].	1 to: 6 do:[ :i |			((( aPointTo x ) = ( i + 9 ) ) &amp; (( aPointTo y ) = i ))	ifTrue:[^true.].			((( aPointTo x ) = ( i + 10 ) ) &amp; (( aPointTo y ) = i ))ifTrue:[^true.].			((( aPointTo x ) = i ) &amp; (( aPointTo y ) = ( i + 9 ) ))	ifTrue:[^true.].			((( aPointTo x ) =  i  ) &amp; (( aPointTo y ) = ( i +10)))	ifTrue:[^true.].	].	^false.</body>

<body package="JungleChess" selector="isMoveValid:isMoveValid:">isMoveValid: aPointFrom isMoveValid: aPointTo	|yMove xMove |	xMove:=  ((aPointTo x ) - (aPointFrom x)) .	yMove:=  ((aPointTo y ) - (aPointFrom y)) .	"Out of bound test"	(self outOfBound:aPointTo)ifTrue:[^false.].		"Monster test"	(aPointTo = self monsterPosition)ifTrue:[^false.].		"Moving Distance Checking"	(((self at:aPointFrom) chess )canMoveDiagonally = true)ifTrue:[		Transcript cr; show:'superCat move!'.		((xMove abs &gt; 1) | ( yMove abs &gt;1))ifTrue:[^false].	]	ifFalse:[		(((self at:aPointFrom) chess )canJump ~= true)ifTrue:[			(((xMove abs = 1 &amp; yMove = 0) | (xMove = 0 &amp; yMove abs = 1)) ~= true) ifTrue:[^false.].		].	].			"Crocodile checking"	((self at:aPointFrom)chess isKindOf: Crocodile )ifTrue:[		Transcript cr; show:'crocodile move!'.		((aPointTo x)+ (aPointTo y) = 12)ifTrue:[^false.].		((aPointTo x)+ (aPointTo y) = 20)ifTrue:[^false.].			5 to: 7 do:[ :i|			((aPointTo x = i) &amp; (aPointTo y  = (i+4) ))ifTrue:[^false.].			((aPointTo x = (i+4) )&amp; ( aPointTo y = i ))ifTrue:[^false.].					].		].		"Den test"	(((self at:aPointTo) class ) name asString = 'Den')ifTrue:[		((((self at:aPointTo) owner )name) = ((((self at:aPointFrom) chess)owner)name))ifTrue:[^false.]		ifFalse:[ 			(self at:aPointTo) occupy: true.			^true.		].		].		"Trap test"	((((self at: aPointTo) chess)~= nil) &amp; (self at: aPointTo) fig = 7) ifTrue:[		((((self at: aPointTo) chess )owner)name = ((self at: aPointTo) owner)name)		ifTrue:[^false.]		ifFalse:[^true.].		].	"Eaten test"	(((self at:aPointTo) chess ) ~= nil) ifTrue:[		((((self at:aPointTo) chess )canBeEatenBy) includes:((((self at:aPointFrom) chess ) class )name asString))		 ifFalse: [^false.].	].	"River Checking"		(((self at:aPointTo) fig = 2) &amp; ((((self at:aPointFrom)chess) canSwim)~= true))ifTrue:[ ^false.].	"Jump Checking"	(((self at:aPointFrom)chess) canJump = true)ifTrue:[			Transcript cr; show:'Lion Move!'.			((xMove ~= 0 )&amp;(yMove ~=0))ifTrue:[^false.].				((xMove = 0 )&amp;(yMove abs &gt;1))ifTrue:[					1 to:((yMove abs) -1) do:[ :i |						((self at: ((aPointTo x)@((aPointFrom y)+ ((yMove//(yMove abs))* i) )))fig = 2)ifFalse:[^false.].						((self at: ((aPointTo x)@((aPointFrom y)+ ((yMove//(yMove abs))* i) )))chess ~=nil)ifTrue:[^false.].					].				].			(yMove = 0 &amp; ( xMove abs &gt;1))ifTrue:[					1 to:((xMove abs) -1) do:[ :i |						((self at: (((aPointFrom x)+ ((xMove//(xMove abs))* i) )@(aPointTo y)))fig = 2)ifFalse:[^false.].						((self at: (((aPointFrom x)+ ((xMove//(xMove abs))* i) )@(aPointTo y)))chess ~= nil)ifTrue:[^false.].					].									].   			          	       ].            		"leave river checking"	(((self at:aPointFrom) fig= 2) &amp; ((((self at:aPointTo)chess class name )asString)='Elephant')) ifTrue:[^false.].		"all pass"		^true.</body>

<body package="JungleChess" selector="board:">board: anObject	board := anObject</body>

<body package="JungleChess" selector="jungleChessBoard:">jungleChessBoard: aJungleChessBoard	jungleChessBoard := aJungleChessBoard</body>

<body package="JungleChess" selector="currentPlayer">currentPlayer	^currentPlayer</body>

<body package="JungleChess" selector="height">height	^height</body>

<body package="JungleChess" selector="width">width	^width</body>

<body package="JungleChess" selector="controller">controller	^controller</body>
</methods>

<methods>
<class-id>JungleGame</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="extent:">extent: aPoint| player1 player2 player3 player4 aPiece |	super initialize.		"-----------------------------initialize player-----------------------------"	player1 := (Player new).	player1 name: 'Player Blue'.	player2 := (Player new).	player2 name: 'Player Black'.	player3 := (Player new).	player3 name: 'Player Red'.	player4 := (Player new).	player4 name: 'Player Green'.	playerList:= Array new:4.	playerList				at: 1 put: player1;				at: 2 put: player2;				at: 3 put: player3;				at: 4 put: player4.	currentPlayer:= 1.		player1RemainChess:= 9.	player2RemainChess:= 9.	player3RemainChess:= 0.	player4RemainChess:= 0.		"-----------------------------initialize winner &amp; loser-----------------------------"	winner:= nil.		loser:=0.		"-----------------------------initialize the board-----------------------------"	width := aPoint x.	height := aPoint y.	board := Array new: height.		1 to: height do: [:y |			board at: y put: (Array new: width).			1 to: width do: [:x |				(board at: y) at: x put: Square new.				((board at: y) at: x) coordinate: x@y.		]	].	"-----------------------------initialize all ground-----------------------------"	6 to: 10 do:[:x |			(board at: 2) at: x put: Ground new.			((board at: 2) at: x) coordinate: x@2.			(board at: 14) at: x put: Ground new.			((board at: 14) at: x) coordinate: x@14.	].	5 to: 11 do:[:x |			(board at: 3) at: x put: Ground new.			((board at: 3) at: x) coordinate: x@3.			(board at: 13) at: x put: Ground new.			((board at: 13) at: x) coordinate: x@13.	].	4 to: 12 do:[:x |			(board at: 4) at: x put: Ground new.			((board at: 4) at: x) coordinate: x@4.			(board at: 12) at: x put: Ground new.			((board at: 12) at: x) coordinate: x@12.	].	3 to: 13 do:[:x |			(board at: 5) at: x put: Ground new.			((board at: 5) at: x) coordinate: x@5.			(board at: 11) at: x put: Ground new.			((board at: 11) at: x) coordinate: x@11.	].	2 to: 14 do:[:x |		6 to: 10 do:[:y |			(board at: y) at: x put: Ground new.			((board at: y) at: x) coordinate: x@y.		]	].			"-----------------------------initialize all river-----------------------------"	(board at: 6) at: 8 put: River new.	((board at: 6) at: 8) coordinate: 8@6.	7 to: 9 do:[:x |			(board at: 7) at: x put: River new.			((board at: 7) at: x) coordinate: x@7.	].	6 to: 7 do:[:x |			(board at: 8) at: x put: River new.			((board at: 8) at: x) coordinate: x@8.	].	9 to: 10 do:[:x |			(board at: 8) at: x put: River new.			((board at: 8) at: x) coordinate: x@8.	].	7 to: 9 do:[:x |			(board at: 9) at: x put: River new.			((board at: 9) at: x) coordinate: x@9.	].	(board at: 10) at: 8 put: River new.	((board at:10) at: 8) coordinate: 8@10.		"-------------------------initialize all den-----------------------------"	(board at: 15) at: 8 put: Den new.	((board at: 15) at: 8) coordinate: 8@15.	((board at: 15) at: 8 ) owner: player1.	(board at: 8) at: 1 put: Den new.	((board at: 8) at: 1) coordinate: 1@8.	((board at: 8) at: 1) owner: player2.	(board at: 1) at: 8 put: Den new.	((board at: 1) at: 8) coordinate: 8@1.	((board at: 1) at: 8) owner: player3.	(board at: 8) at: 15 put: Den new.	((board at: 8) at: 15) coordinate: 15@8.	((board at: 8) at: 15) owner: player4.	"-----------------------------initialize all trap-----------------------------"	(board at: 15) at: 7 put: Trap new.	((board at: 15) at: 7) coordinate: 7@15.	((board at: 15) at: 7) owner: player1.	(board at: 14) at: 8 put: Trap new.	((board at: 14) at: 8) coordinate: 8@14.	((board at: 14) at: 8) owner: player1.	(board at: 15) at: 9 put: Trap new.	((board at: 15) at: 9) coordinate: 9@15.	((board at: 15) at: 9) owner: player1.	(board at: 7) at: 1 put: Trap new.	((board at: 7) at: 1) coordinate: 1@7.	((board at: 7) at: 1) owner: player2.	(board at: 9) at: 1 put: Trap new.	((board at: 9) at: 1) coordinate: 1@9.	((board at: 9) at: 1) owner: player2.	(board at: 8) at: 2 put: Trap new.	((board at: 8) at: 2) coordinate: 2@8.	((board at: 8) at: 2) owner: player2.	(board at: 1) at: 7 put: Trap new.	((board at:1) at: 7) coordinate: 7@1.	((board at: 1) at: 7) owner: player3.	(board at: 1) at: 9 put: Trap new.	((board at: 1) at: 9) coordinate: 9@1.	((board at: 1) at: 9) owner: player3.	(board at: 2) at: 8 put: Trap new.	((board at: 2) at: 8) coordinate: 8@2.	((board at: 2) at: 8) owner: player3.	(board at: 7) at: 15 put: Trap new.	((board at: 7) at: 15) coordinate: 15@7.	((board at: 7) at: 15) owner: player4.	(board at: 9) at: 15 put: Trap new.	((board at: 9) at: 15) coordinate: 15@9.	((board at: 9) at: 15) owner: player4.	(board at: 8) at: 14 put: Trap new.	((board at: 8) at: 14) coordinate: 14@8.	((board at: 8) at: 14) owner: player4.	"-----------------------------initialize all chess-----------------------------"	    	aPiece := Monster new.	(((board at: 8) at: 8)) chess: aPiece.	monsterPosition:= 8@8.	monsterCount:=0.	"-----------------------------Player 1(Blue)-----------------------------"    aPiece := Lion new.    aPiece owner: player1.	(((board at: 14) at: 10)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player1.	(((board at: 14) at: 6)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player1.	(((board at: 13) at: 9)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player1.	(((board at: 13) at: 7)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player1.	(((board at: 13) at: 11)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player1.	(((board at: 12) at: 10)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player1.	(((board at: 12) at: 6)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player1.	(((board at: 13) at: 5)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player1.	(((board at: 11) at: 8)) chess: aPiece.	"-----------------------------Player 2(Black)-----------------------------"    aPiece := Lion new.    aPiece owner: player2.	(((board at: 10) at: 2)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player2.	(((board at:6) at: 2)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player2.	(((board at: 9) at: 3)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player2.	(((board at: 7) at: 3)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player2.	(((board at: 11) at: 3)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player2.	(((board at: 10) at: 4)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player2.	(((board at: 6) at: 4)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player2.	(((board at: 5) at: 3)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player2.	(((board at: 8) at: 5)) chess: aPiece.	"-----------------------------Player 3(Red)-----------------------------"    aPiece := Lion new.    aPiece owner: player3.	(((board at: 2) at: 6)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player3.	(((board at: 2) at: 10)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player3.	(((board at: 3) at: 7)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player3.	(((board at: 3) at: 9)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player3.	(((board at: 3) at: 5)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player3.	(((board at: 4) at: 6)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player3.	(((board at: 4) at: 10)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player3.	(((board at: 3) at: 11)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player3.	(((board at: 5) at: 8)) chess: aPiece.	"-----------------------------Player 4(Green)-----------------------------"    aPiece := Lion new.    aPiece owner: player4.	(((board at: 6) at: 14)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player4.	(((board at: 10) at: 14)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player4.	(((board at: 7) at: 13)) chess: aPiece.    aPiece := SuperCat new.    aPiece owner: player4.	(((board at: 9) at: 13)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player4.	(((board at: 5) at: 13)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player4.	(((board at: 6) at: 12)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player4.	(((board at: 10) at: 12)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player4.	(((board at: 11) at: 13)) chess: aPiece.    aPiece := Crocodile new.    aPiece owner: player4.	(((board at: 8) at: 11)) chess: aPiece.</body>

<body package="JungleChess" selector="makeMove:makeMove:">makeMove: aPointFrom makeMove: aPointTo	(self at:aPointTo) chess:(self at:aPointFrom) chess.	(self at:aPointFrom) chess: nil.	(self at:aPointTo) changed.	(self at:aPointFrom) changed.</body>

<body package="JungleChess" selector="winner:">winner:aPlayer	winner:= aPlayer.</body>

<body package="JungleChess" selector="checkRemainChess:">checkRemainChess: anInt		(anInt = 1)		ifTrue:[ ^player1RemainChess].	(anInt =2)		ifTrue:[ ^player2RemainChess].	(anInt =3)		ifTrue:[ ^player3RemainChess].	(anInt =4)		ifTrue:[ ^player4RemainChess].</body>

<body package="JungleChess" selector="player2RemainChess:">player2RemainChess:anInt	player2RemainChess:=anInt.</body>

<body package="JungleChess" selector="player1RemainChess:">player1RemainChess:anInt	player1RemainChess:=anInt.	</body>

<body package="JungleChess" selector="player3RemainChess:">player3RemainChess:anInt	player3RemainChess:=anInt.</body>

<body package="JungleChess" selector="player4RemainChess:">player4RemainChess:anInt	player4RemainChess:=anInt.</body>

<body package="JungleChess" selector="player4RemainChess">player4RemainChess	^player4RemainChess.</body>

<body package="JungleChess" selector="player3RemainChess">player3RemainChess	^player3RemainChess.</body>

<body package="JungleChess" selector="player2RemainChess">player2RemainChess	^player2RemainChess.</body>

<body package="JungleChess" selector="winner">winner	^winner.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	board := nil.	currentPlayer := nil.	nextPlayer := nil.	width := nil.	height := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="JungleChess" selector="checkRemainChess">checkRemainChess	^checkRemainChess.</body>

<body package="JungleChess" selector="loser:">loser:anInt	loser:= anInt.</body>

<body package="JungleChess" selector="extent">extent	^extent</body>

<body package="JungleChess" selector="player1RemainChess">player1RemainChess	^player1RemainChess.</body>

<body package="JungleChess" selector="monsterPosition">monsterPosition	^monsterPosition.</body>

<body package="JungleChess" selector="loser">loser	^loser.</body>
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>SquareController</class-id> <category>events</category>

<body package="JungleChess" selector="redButtonPressedEvent:">redButtonPressedEvent: event    | wrapper jungleGameView jungleGameController |    wrapper := self view container.    jungleGameView := wrapper container.    jungleGameController := jungleGameView controller.	(jungleGameView model winner = nil	)	ifTrue:[    jungleGameController clickAt: self model coordinate.]</body>
</methods>


<methods>
<class-id>SquareView class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="model:">model: aSquare	^super new model: aSquare.</body>
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChess" selector="selected:">selected: aBool		selected := aBool.</body>

<body package="JungleChess" selector="selected">selected		^self.</body>

<body package="JungleChess" selector="model:">model: aSquare	super model: aSquare.	squareImage:= Array new: 7.	squareImage		at: 1 put: (ImageReader fromFile: 'Figures\ground.png') image;		at: 2 put: (ImageReader fromFile: 'Figures\river.png') image; 		at: 3 put: (ImageReader fromFile: 'Figures\den1.png') image;		at: 4 put: (ImageReader fromFile: 'Figures\den2.png') image;		at: 5 put: (ImageReader fromFile: 'Figures\den3.png') image;		at: 6 put: (ImageReader fromFile: 'Figures\den4.png') image;		at: 7 put: (ImageReader fromFile: 'Figures\trap.png') image.	chessImage:= Array new: 37.	chessImage		at: 1 put: (ImageReader fromFile: 'Figures\rat1.png') image;		at: 2 put: (ImageReader fromFile: 'Figures\rat2.png') image;		at: 3 put: (ImageReader fromFile: 'Figures\rat3.png') image;		at: 4 put: (ImageReader fromFile: 'Figures\rat4.png') image;		at: 5 put: (ImageReader fromFile: 'Figures\supercat1.png') image;		at: 6 put: (ImageReader fromFile: 'Figures\supercat2.png') image;		at: 7 put: (ImageReader fromFile: 'Figures\supercat3.png') image;		at: 8 put: (ImageReader fromFile: 'Figures\supercat4.png') image;		at: 9 put: (ImageReader fromFile: 'Figures\dog1.png') image;		at: 10 put: (ImageReader fromFile: 'Figures\dog2.png') image;		at: 11 put: (ImageReader fromFile: 'Figures\dog3.png') image;		at: 12 put: (ImageReader fromFile: 'Figures\dog4.png') image;		at: 13  put: (ImageReader fromFile: 'Figures\wolf1.png') image;		at: 14 put: (ImageReader fromFile: 'Figures\wolf2.png') image;		at: 15 put: (ImageReader fromFile: 'Figures\wolf3.png') image;		at: 16 put: (ImageReader fromFile: 'Figures\wolf4.png') image;		at: 17 put: (ImageReader fromFile: 'Figures\jaguar1.png') image;		at: 18 put: (ImageReader fromFile: 'Figures\jaguar2.png') image;		at: 19 put: (ImageReader fromFile: 'Figures\jaguar3.png') image;		at: 20 put: (ImageReader fromFile: 'Figures\jaguar4.png') image;		at: 21 put: (ImageReader fromFile: 'Figures\tiger1.png') image;		at: 22 put: (ImageReader fromFile: 'Figures\tiger2.png') image;		at: 23 put: (ImageReader fromFile: 'Figures\tiger3.png') image;		at: 24 put: (ImageReader fromFile: 'Figures\tiger4.png') image;		at: 25 put: (ImageReader fromFile: 'Figures\lion1.png') image;		at: 26 put: (ImageReader fromFile: 'Figures\lion2.png') image;		at: 27 put: (ImageReader fromFile: 'Figures\lion3.png') image;		at: 28 put: (ImageReader fromFile: 'Figures\lion4.png') image;		at: 29 put: (ImageReader fromFile: 'Figures\elephant1.png') image;		at: 30 put: (ImageReader fromFile: 'Figures\elephant2.png') image;		at: 31 put: (ImageReader fromFile: 'Figures\elephant3.png') image;		at: 32 put: (ImageReader fromFile: 'Figures\elephant4.png') image;		at: 33 put: (ImageReader fromFile: 'Figures\crocodile1.png') image;		at: 34 put: (ImageReader fromFile: 'Figures\crocodile2.png') image;		at: 35 put: (ImageReader fromFile: 'Figures\crocodile3.png') image;		at: 36 put: (ImageReader fromFile: 'Figures\crocodile4.png') image;		at: 37 put: (ImageReader fromFile: 'Figures\monster.png') image.	^self</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass	^SquareController.</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>displaying</category>

<body package="JungleChess" selector="displayOn:">displayOn: aGraphicsContext| applicationImage alphaImage displayBlock |applicationImage := Image extent: 45@45 depth: 24 palette: FixedPalette rgb8Bit.(model fig ~=nil)ifTrue:[(model chess ~= nil) ifTrue: [                      "If any chess on the square"	(model selected ~= true) ifTrue:[    		"Display squareImage"    		alphaImage := (squareImage at: model fig).    		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)      	 weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)))) ]].	    displayBlock value: 0@0.    		"Display chesImage"    		alphaImage := (chessImage at: model chess fig).     		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)          	weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)))) ]].    		displayBlock value: 0@0.    		applicationImage displayOn: aGraphicsContext.]	ifFalse:[ 		"Display squareImage"    		alphaImage := (squareImage at: model fig).    		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)         	 weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)))) ]].    		displayBlock value: 0@0.	    "Display chesImage"    		alphaImage := (chessImage at: model chess fig).     		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)         	 weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)/2))) ]].    		displayBlock value: 0@0.    		applicationImage displayOn: aGraphicsContext.		] ]ifFalse: [                                    "If no chess on the square"   	 (squareImage at: model fig) displayOn: aGraphicsContext.	].].</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>SuperCat</class-id> <category>accessing</category>

<body package="JungleChess" selector="canMoveDiagonally">canMoveDiagonally	^true.</body>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 5.		].		(owner name = 'Player Black') ifTrue: [					fig := 6.		].		(owner name = 'Player Red') ifTrue: [					fig := 7.		].		(owner name = 'Player Green') ifTrue: [					fig := 8.		].</body>
</methods>

<methods>
<class-id>SuperCat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canMoveDiagonally:=true.	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Dog';			at: 7 put: 'SuperCat';			at: 8 put: 'Monster';			at: 9 put: 'Crocodile'.	^self</body>
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Monster';			at: 7 put: 'Crocodile'.	^self</body>
</methods>

<methods>
<class-id>Wolf</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 13.		].		(owner name = 'Player Black') ifTrue: [					fig := 14.		].		(owner name = 'Player Red') ifTrue: [					fig := 15.		].		(owner name = 'Player Green') ifTrue: [					fig := 16.		].</body>
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canJump:= true.	canBeEatenBy := Dictionary new.	canBeEatenBy					at: 1 put: 'Lion';					at: 2 put: 'Elephant';					at: 3 put: 'Monster';					at: 4 put: 'Crocodile'.	^self</body>

<body package="JungleChess" selector="canJump">canJump	^true.</body>
</methods>

<methods>
<class-id>Lion</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 25.		].		(owner name = 'Player Black') ifTrue: [					fig := 26.		].		(owner name = 'Player Red') ifTrue: [					fig := 27.		].		(owner name = 'Player Green') ifTrue: [					fig := 28.		].</body>
</methods>


<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	occupy:= false.	^self</body>
</methods>

<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChess" selector="occupy:">occupy:aBool	occupy:= aBool.</body>

<body package="JungleChess" selector="occupy">occupy	^occupy.</body>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 3.		].		(owner name = 'Player Black') ifTrue: [					fig := 4.		].		(owner name = 'Player Red') ifTrue: [					fig := 5.		].		(owner name = 'Player Green') ifTrue: [					fig := 6.		].</body>
</methods>


<methods>
<class-id>Crocodile</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim">canSwim	^true.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	canSwim := true.	" *** And replace this comment with additional initialization code *** "		canBeEatenBy := Dictionary new.	canBeEatenBy					at: 1 put: 'Monster';					at: 2 put: 'Crocodile'.	^self</body>
</methods>

<methods>
<class-id>Crocodile</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 33.		].		(owner name = 'Player Black') ifTrue: [					fig := 34.		].		(owner name = 'Player Red') ifTrue: [					fig := 35.		].		(owner name = 'Player Green') ifTrue: [					fig := 36.		].</body>
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Dog';			at: 7 put: 'Monster';			at: 8 put: 'Crocodile'.	^self</body>
</methods>

<methods>
<class-id>Dog</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 9.		].		(owner name = 'Player Black') ifTrue: [					fig := 10.		].		(owner name = 'Player Red') ifTrue: [					fig := 11.		].		(owner name = 'Player Green') ifTrue: [					fig := 12.		].</body>
</methods>


<methods>
<class-id>JungleGameView</class-id> <category>accessing</category>

<body package="JungleChess" selector="setView:model:">setView:aPoint	model: aJungleGame	super model: aJungleGame.	1 to: model height do: [:y |         1 to: model width do: [:x |             | view wrapper offset size |            (aJungleGame at: x @ y) ifNotNil: [                view := SquareView model: (aJungleGame at: x @ y).                offset := (x - 1 / model width) @ (y - 1 / model height).                size := (1 / model width) @ (1 / model height).                wrapper := BoundedWrapper on: view in: (offset extent: size).                self addWrapper: wrapper            ].        ]    ]</body>

<body package="JungleChess" selector="model:">model: aJungleGame	super model: aJungleGame.	1 to: model height do: [:y |         1 to: model width do: [:x |             | view wrapper offset size |            (aJungleGame at: x @ y) ifNotNil: [                view := SquareView model: (aJungleGame at: x @ y).                offset := (x - 1 / model width) @ (y - 1 / model height).                size := (1 / model width) @ (1 / model height).                wrapper := BoundedWrapper on: view in: (offset extent: size).                self addWrapper: wrapper            ].        ]    ]</body>
</methods>

<methods>
<class-id>JungleGameView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass	^JungleGameController.</body>
</methods>

<methods>
<class-id>JungleGameView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>River</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	fig := 2.	^self</body>
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Rat';			at: 3 put: 'Monster';			at: 4 put: 'Crocodile'.	^self</body>
</methods>

<methods>
<class-id>Elephant</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 29.		].		(owner name = 'Player Black') ifTrue: [					fig := 30.		].		(owner name = 'Player Red') ifTrue: [					fig := 31.		].		(owner name = 'Player Green') ifTrue: [					fig := 32.		].</body>
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';			at: 5 put: 'Monster';			at: 6 put: 'Crocodile'.			^self</body>
</methods>

<methods>
<class-id>Jaguar</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = 'Player Blue') ifTrue: [					fig := 17.		].		(owner name = 'Player Black') ifTrue: [					fig := 18.		].		(owner name = 'Player Red') ifTrue: [					fig := 19.		].		(owner name = 'Player Green') ifTrue: [					fig := 20.		].</body>
</methods>



</st-source>
