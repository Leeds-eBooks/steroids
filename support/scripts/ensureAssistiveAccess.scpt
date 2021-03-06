FasdUAS 1.101.10   ��   ��    k             l     ��  ��    d ^ Tries to ensure that access for assistive devices is turned on so as to enable GUI scripting.     � 	 	 �   T r i e s   t o   e n s u r e   t h a t   a c c e s s   f o r   a s s i s t i v e   d e v i c e s   i s   t u r n e d   o n   s o   a s   t o   e n a b l e   G U I   s c r i p t i n g .   
  
 l     ��  ��    o i - Up to 10.8.x, access can be turned on programmatically, on demand - via an admin authorization prompt.     �   �   -   U p   t o   1 0 . 8 . x ,   a c c e s s   c a n   b e   t u r n e d   o n   p r o g r a m m a t i c a l l y ,   o n   d e m a n d   -   v i a   a n   a d m i n   a u t h o r i z a t i o n   p r o m p t .      l     ��  ��    � � - From 10.9, the best we can do is display a GUI prompt, then open System Preferences to the relevant pane, then exit, telling the user to try again after interactively enabling access.     �  t   -   F r o m   1 0 . 9 ,   t h e   b e s t   w e   c a n   d o   i s   d i s p l a y   a   G U I   p r o m p t ,   t h e n   o p e n   S y s t e m   P r e f e r e n c e s   t o   t h e   r e l e v a n t   p a n e ,   t h e n   e x i t ,   t e l l i n g   t h e   u s e r   t o   t r y   a g a i n   a f t e r   i n t e r a c t i v e l y   e n a b l i n g   a c c e s s .      l     ��  ��     	 Returns:     �      R e t u r n s :      l     ��  ��    M G 	Only returns if access is already enabled; throws an error otherwise.     �   �   	 O n l y   r e t u r n s   i f   a c c e s s   i s   a l r e a d y   e n a b l e d ;   t h r o w s   a n   e r r o r   o t h e r w i s e .      l     ��   !��      	 Example:    ! � " "    E x a m p l e :   # $ # l     �� % &��   % r l		my ensureAssistiveAccess() # throws error, if not enabled and couldn't be enabled programmatically (10.9+)    & � ' ' � 	 	 m y   e n s u r e A s s i s t i v e A c c e s s ( )   #   t h r o w s   e r r o r ,   i f   n o t   e n a b l e d   a n d   c o u l d n ' t   b e   e n a b l e d   p r o g r a m m a t i c a l l y   ( 1 0 . 9 + ) $  ( ) ( l     �� * +��   * &     # alternatively, catch error     + � , , @       #   a l t e r n a t i v e l y ,   c a t c h   e r r o r   )  - . - l     �� / 0��   /     try     0 � 1 1        t r y   .  2 3 2 l     �� 4 5��   4 #  		my ensureAssistiveAccess()    5 � 6 6 :   	 	 m y   e n s u r e A s s i s t i v e A c c e s s ( ) 3  7 8 7 l     �� 9 :��   9     on error    : � ; ;        o n   e r r o r 8  < = < l     �� > ?��   > [ U       # Exit quietly, relying on the prompt to have provided sufficient information.    ? � @ @ �               #   E x i t   q u i e t l y ,   r e l y i n g   o n   t h e   p r o m p t   t o   h a v e   p r o v i d e d   s u f f i c i e n t   i n f o r m a t i o n . =  A B A l     �� C D��   C  	    return    D � E E  	         r e t u r n B  F G F l     �� H I��   H  
   end try    I � J J        e n d   t r y G  K L K l     ��������  ��  ��   L  M N M l      O���� O q       P P �� Q�� 0 ok   Q �� R��  0 ispremavericks isPreMavericks R �� S�� 0 veros verOs S �� T�� 0 vermajor verMajor T �� U�� 0 verminor verMinor U ������ 0 btn  ��  ��  ��   N  V W V l     �� X Y��   X 0 * Determine if access is currently enabled.    Y � Z Z T   D e t e r m i n e   i f   a c c e s s   i s   c u r r e n t l y   e n a b l e d . W  [ \ [ l    
 ]���� ] O    
 ^ _ ^ r    	 ` a ` 1    ��
�� 
uien a o      ���� 0 ok   _ m      b b�                                                                                  sevs  alis    �  Machintosh HD              ���H+     ?System Events.app                                               �"�X8        ����  	                CoreServices    ���      �X�       ?   <   ;  >Machintosh HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c h i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   \  c d c l  r e���� e Z   r f g���� f H     h h o    ���� 0 ok   g k   n i i  j k j l   �� l m��   l ) # See if we're running 10.8 or below    m � n n F   S e e   i f   w e ' r e   r u n n i n g   1 0 . 8   o r   b e l o w k  o p o r    ) q r q J     s s  t u t n    v w v 1    ��
�� 
txdl w 1    ��
�� 
ascr u  x�� x J     y y  z�� z m     { { � | |  .��  ��   r J       } }  ~  ~ o      ���� 0 orgtids orgTIDs   ��� � n      � � � 1   % '��
�� 
txdl � 1   $ %��
�� 
ascr��   p  � � � r   * 3 � � � n   * 1 � � � 1   / 1��
�� 
sisv � l  * / ����� � I  * /������
�� .sysosigtsirr   ��� null��  ��  ��  ��   � o      ���� 0 veros verOs �  � � � r   4 < � � � c   4 : � � � n   4 8 � � � 4  5 8�� �
�� 
citm � m   6 7����  � o   4 5���� 0 veros verOs � m   8 9��
�� 
nmbr � o      ���� 0 vermajor verMajor �  � � � r   = E � � � c   = C � � � n   = A � � � 4  > A�� �
�� 
citm � m   ? @����  � o   = >���� 0 veros verOs � m   A B��
�� 
nmbr � o      ���� 0 verminor verMinor �  � � � r   F K � � � o   F G���� 0 orgtids orgTIDs � n      � � � 1   H J��
�� 
txdl � 1   G H��
�� 
ascr �  � � � r   L Y � � � F   L W � � � B   L O � � � o   L M���� 0 vermajor verMajor � m   M N���� 
 � A   R U � � � o   R S���� 0 verminor verMinor � m   S T���� 	 � o      ����  0 ispremavericks isPreMavericks �  ��� � Z   Zn � ��� � � o   Z [����  0 ispremavericks isPreMavericks � l  ^ � � � � � k   ^ � � �  � � � Q   ^ � � ��� � k   a � � �  � � � r   a h � � � n   a d � � � 1   b d��
�� 
pnam � m   a b��
�� misccura � o      ���� 0 appname appName �  � � � l  i ~ � � � � Z  i ~ � ����� � =   i p � � � o   i l���� 0 appname appName � m   l o � � � � �  o s a s c r i p t � r   s z � � � m   s v � � � � �  T e r m i n a l � o      ���� 0 appname appName��  ��   � R L ?? how can we deal with other apps that invoke `osascript`, such as Alfred?    � � � � �   ? ?   h o w   c a n   w e   d e a l   w i t h   o t h e r   a p p s   t h a t   i n v o k e   ` o s a s c r i p t ` ,   s u c h   a s   A l f r e d ? �  � � � l   ��������  ��  ��   �  ��� � O    � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � r   � � � � � m   � � � � � � �� T o   u s e   t h e   d e b u g   c o m m a n d ,   y o u   m u s t   t u r n   o n   A c c e s s   f o r   A s s i s t i v e   D e v i c e s   i n   S y s t e m   P r e f e r e n c e s   >   A c c e s s i b i l i t y   >   E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s .   T o   l e t   S t e r o i d s   d o   t h i s   f o r   y o u ,   c l i c k   O K   a n d   e n t e r   y o u r   a d m i n i s t r a t i v e   p a s s w o r d . � o      ���� 0 infomsg infoMsg �  ��� � I  � ��� � �
�� .sysodisAaleR        TEXT � o   � ����� 0 infomsg infoMsg � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��  ��   � 4    ��� �
�� 
capp � o   � ����� 0 appname appName��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  � ���������  ��  ��   �  ��� � Q   � � � ��� � k   � � � �  � � � l  � ��� � ���   � O I Try to turn it on - will prompt for authorization via admin credentials.    � � � � �   T r y   t o   t u r n   i t   o n   -   w i l l   p r o m p t   f o r   a u t h o r i z a t i o n   v i a   a d m i n   c r e d e n t i a l s . �  ��� � O   � � � � � k   � � � �  � � � r   � � � � � m   � ���
�� boovtrue � 1   � ���
�� 
uien �  ��� � l  � � � � � � r   � � � � � 1   � ���
�� 
uien � o      ���� 0 ok   � = 7 Check if the user actually provided the authorization.    � � � � n   C h e c k   i f   t h e   u s e r   a c t u a l l y   p r o v i d e d   t h e   a u t h o r i z a t i o n .��   � m   � �  �                                                                                  sevs  alis    �  Machintosh HD              ���H+     ?System Events.app                                               �"�X8        ����  	                CoreServices    ���      �X�       ?   <   ;  >Machintosh HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c h i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � U O 10.8-: we can try to turn it on ourselves, which will prompt for authorization    � � �   1 0 . 8 - :   w e   c a n   t r y   t o   t u r n   i t   o n   o u r s e l v e s ,   w h i c h   w i l l   p r o m p t   f o r   a u t h o r i z a t i o n��   � l  �n k   �n  l  � ���	��   a [ Try a dummy GUI scripting operation - which we know will fail - in the hope that this will   	 �

 �   T r y   a   d u m m y   G U I   s c r i p t i n g   o p e r a t i o n   -   w h i c h   w e   k n o w   w i l l   f a i l   -   i n   t h e   h o p e   t h a t   t h i s   w i l l  l  � �����   k e get the app at hand registered in System Preferences > Security & Privacy > Privacy > Accessibility.    � �   g e t   t h e   a p p   a t   h a n d   r e g i s t e r e d   i n   S y s t e m   P r e f e r e n c e s   >   S e c u r i t y   &   P r i v a c y   >   P r i v a c y   >   A c c e s s i b i l i t y .  l  � �����     ?? Does this work?    � &   ? ?   D o e s   t h i s   w o r k ?  Q   � ��� O  � � n   � � 2  � ���
�� 
cwin 4   � ���
�� 
prcs m   � � �  S y s t e m U I S e r v e r m   � �  �                                                                                  sevs  alis    �  Machintosh HD              ���H+     ?System Events.app                                               �"�X8        ����  	                CoreServices    ���      �X�       ?   <   ;  >Machintosh HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M a c h i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   !"! r   � �#$# n   � �%&% 1   � ���
�� 
pnam& m   � ���
�� misccura$ o      ���� 0 appname appName" '(' l  �)*+) Z  �,-��~, =   � �./. o   � ��}�} 0 appname appName/ m   � �00 �11  o s a s c r i p t- r  	232 m  44 �55  T e r m i n a l3 o      �|�| 0 appname appName�  �~  * R L ?? how can we deal with other apps that invoke `osascript`, such as Alfred?   + �66 �   ? ?   h o w   c a n   w e   d e a l   w i t h   o t h e r   a p p s   t h a t   i n v o k e   ` o s a s c r i p t ` ,   s u c h   a s   A l f r e d ?( 787 r  9:9 b  ;<; b  =>= m  ?? �@@ � T o   u s e   t h e   d e b u g   c o m m a n d ,   y o u   m u s t   t u r n   o n   A c c e s s   f o r   A s s i s t i v e   D e v i c e s   f o r   a p p l i c a t i o n   '> o  �{�{ 0 appname appName< m  AA �BB � '   ( S y s t e m   P r e f e r e n c e s   >   S e c u r i t y   &   P r i v a c y   >   P r i v a c y   >   A c c e s s i b i l i t y )   f i r s t ,   t h e n   r e t r y .: o      �z�z 0 errmsg errMsg8 CDC Q  lEF�yE k  !cGG HIH I !:�xJK
�x .sysodlogaskr        TEXTJ b  !0LML b  !,NON b  !(PQP o  !$�w�w 0 errmsg errMsgQ 1  $'�v
�v 
lnfdO 1  (+�u
�u 
lnfdM m  ,/RR �SS � P r e s s   O K   t o   o p e n   S y s t e m   P r e f e r e n c e s   n o w ;   u n l o c k ,   i f   n e c e s s a r y ,   t h e n   l o c a t e   t h e   a p p l i c a t i o n   i n   t h e   l i s t   a n d   c h e c k   i t .K �tT�s
�t 
dispT m  36�r
�r stic   �s  I UVU l ;;�qWX�q  W 2 , We only get here if the user didn't cancel.   X �YY X   W e   o n l y   g e t   h e r e   i f   t h e   u s e r   d i d n ' t   c a n c e l .V Z[Z l ;;�p\]�p  \ � � Open System Preferences and show the appropriate pane. (This is the best we can do in guiding the user - further guidance would require the very kind of assistive access we're trying to turn on.)   ] �^^�   O p e n   S y s t e m   P r e f e r e n c e s   a n d   s h o w   t h e   a p p r o p r i a t e   p a n e .   ( T h i s   i s   t h e   b e s t   w e   c a n   d o   i n   g u i d i n g   t h e   u s e r   -   f u r t h e r   g u i d a n c e   w o u l d   r e q u i r e   t h e   v e r y   k i n d   o f   a s s i s t i v e   a c c e s s   w e ' r e   t r y i n g   t o   t u r n   o n . )[ _�o_ O  ;c`a` k  Abbb cdc I AF�n�m�l
�n .miscactvnull��� ��� null�m  �l  d e�ke O  Gbfgf I Ua�jh�i
�j .miscmvisxppa       xppah 4  U]�hi
�h 
xppai m  Y\jj �kk " P r i v a c y _ A s s i s t i v e�i  g 5  GR�gl�f
�g 
xppbl m  KNmm �nn : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y
�f kfrmID  �k  a m  ;>oo�                                                                                  sprf  alis    �  Machintosh HD              ���H+     aSystem Preferences.app                                          ��X2�        ����  	                Applications    ���      �X�       a  2Machintosh HD:Applications: System Preferences.app  .  S y s t e m   P r e f e r e n c e s . a p p    M a c h i n t o s h   H D  #Applications/System Preferences.app   / ��  �o  F R      �e�d�c
�e .ascrerr ****      � ****�d  �c  �y  D p�bp l mm�aqr�a  q g a We must return false, as we can't easily and reliably wait for the user to finish the operation.   r �ss �   W e   m u s t   r e t u r n   f a l s e ,   a s   w e   c a n ' t   e a s i l y   a n d   r e l i a b l y   w a i t   f o r   t h e   u s e r   t o   f i n i s h   t h e   o p e r a t i o n .�b   f ` 10.9+: we cannot turn it on ourselves, it has to be enabled *interactively*, *per application*.    �tt �   1 0 . 9 + :   w e   c a n n o t   t u r n   i t   o n   o u r s e l v e s ,   i t   h a s   t o   b e   e n a b l e d   * i n t e r a c t i v e l y * ,   * p e r   a p p l i c a t i o n * .��  ��  ��  ��  ��   d uvu l s�w�`�_w Z  s�xy�^zx H  su{{ o  st�]�] 0 ok  y k  x�|| }~} Z  x���\�[ o  xy�Z�Z  0 ispremavericks isPreMavericks� l |����� r  |���� m  |�� ���6 T o   u s e   t h e   d e b u g   c o m m a n d ,   y o u   m u s t   t u r n   o n   A c c e s s   f o r   A s s i s t i v e   D e v i c e s   f i r s t ,   v i a   S y s t e m   P r e f e r e n c e s   >   A c c e s s i b i l i t y   >   E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s� o      �Y�Y 0 errmsg errMsg� d ^ This indicates that the authorization prompt was aborted; for 10.9+, errMsg was set above.			   � ��� �   T h i s   i n d i c a t e s   t h a t   t h e   a u t h o r i z a t i o n   p r o m p t   w a s   a b o r t e d ;   f o r   1 0 . 9 + ,   e r r M s g   w a s   s e t   a b o v e . 	 	 	�\  �[  ~ ��X� R  ���W��V
�W .ascrerr ****      � ****� o  ���U�U 0 errmsg errMsg�V  �X  �^  z L  ���� m  ���T
�T boovtrue�`  �_  v ��S� l     �R�Q�P�R  �Q  �P  �S       �O��� � ��O  � �N�M�L�K
�N .aevtoappnull  �   � ****�M 0 orgtids orgTIDs�L 0 appname appName�K 0 infomsg infoMsg� �J��I�H���G
�J .aevtoappnull  �   � ****� k    ���  M��  [��  c�� u�F�F  �I  �H  � �E�D�C�B�A�@�E 0 ok  �D  0 ispremavericks isPreMavericks�C 0 veros verOs�B 0 vermajor verMajor�A 0 verminor verMinor�@ 0 btn  � 1 b�?�>�= {�<�;�:�9�8�7�6�5�4�3�2�1 � ��0�/ ��.�- ��,�+�*�)�(04?A�'�&R�%�$�#o�"m�!� j��
�? 
uien
�> 
ascr
�= 
txdl
�< 
cobj�; 0 orgtids orgTIDs
�: .sysosigtsirr   ��� null
�9 
sisv
�8 
citm
�7 
nmbr�6 
�5 	
�4 
bool
�3 misccura
�2 
pnam�1 0 appname appName
�0 
capp
�/ .miscactvnull��� ��� null�. 0 infomsg infoMsg
�- 
btns
�, .sysodisAaleR        TEXT�+  �*  
�) 
prcs
�( 
cwin�' 0 errmsg errMsg
�& 
lnfd
�% 
disp
�$ stic   
�# .sysodlogaskr        TEXT
�" 
xppb
�! kfrmID  
�  
xppa
� .miscmvisxppa       xppa�G�� *�,E�UO�c��,�kvlvE[�k/E�Z[�l/��,FZO*j �,E�O��k/�&E�O��l/�&E�O���,FO��	 ���&E�O� u L��,E` O_ a   a E` Y hO*a _ / *j Oa E` O_ a a kvl UW X  hO � e*�,FO*�,E�UW X  hY � � *a a /a -EUW X  hO��,E` O_ a   a  E` Y hOa !_ %a "%E` #O G_ #_ $%_ $%a %%a &a 'l (Oa ) #*j O*a *a +a ,0 *a -a ./j /UUW X  hOPY hO� � a 0E` #Y hO)j_ #Y e� ��� �  �� ���  ascr  ��ޭ