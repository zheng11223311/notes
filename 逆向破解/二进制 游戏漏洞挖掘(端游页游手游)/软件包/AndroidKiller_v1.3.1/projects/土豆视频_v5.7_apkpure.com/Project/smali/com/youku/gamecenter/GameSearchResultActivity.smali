.class public Lcom/youku/gamecenter/GameSearchResultActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameSearchResultActivity.java"


# instance fields
.field private layout_focus:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

.field public mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field public mThemeType:I

.field private pz:I

.field private searchWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 32
    const/16 v0, 0x28

    iput v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->pz:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mThemeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchResultActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->layout_focus:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameSearchResultActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchResultActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/gamecenter/GameSearchResultActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchResultActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchResultActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameSearchResultActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchResultActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSearchResultActivity;->goSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GameSearchResultActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchResultActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSearchResultActivity;->handleSearchRequest(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private goSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchWord"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchResultActivity;->showNetTipsAutomatic()V

    .line 207
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->clearDatas()V

    .line 192
    :cond_1
    new-instance v0, Lcom/youku/gamecenter/widgets/GameInfoListView;

    const-string v1, "11"

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;-><init>(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    .line 194
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0, v3}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setIsFirstSearch(Z)V

    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->registerReceivers()V

    .line 197
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setSearchWord(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    iget v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->pz:I

    invoke-static {p1, v3, v1}, Lcom/youku/gamecenter/services/URLContainer;->getSearcResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setUrl(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->fetchGameList()V

    .line 203
    :cond_2
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchResultActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private handleSearchRequest(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "layout_focus"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    .line 161
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 162
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 163
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 164
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sget v1, Lcom/youku/gamecenter/R$string;->search_keyword_empty:I

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameSearchResultActivity;->goSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 173
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 174
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 175
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 177
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 178
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 58
    new-instance v0, Lcom/youku/gamecenter/widgets/GameInfoListView;

    const-string v1, "11"

    invoke-direct {v0, p0, v3, v1, v4}, Lcom/youku/gamecenter/widgets/GameInfoListView;-><init>(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->registerReceivers()V

    .line 61
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setSearchWord(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0, v4}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setIsFirstSearch(Z)V

    .line 63
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    iget v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->pz:I

    invoke-static {v1, v4, v2}, Lcom/youku/gamecenter/services/URLContainer;->getSearcResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setUrl(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->fetchGameList()V

    .line 69
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$id;->layout_focus:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->layout_focus:Landroid/widget/LinearLayout;

    .line 70
    sget v0, Lcom/youku/gamecenter/R$id;->et_search_game:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v0, Lcom/youku/gamecenter/R$id;->btn_game_search:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->gameSearch:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    new-instance v1, Lcom/youku/gamecenter/GameSearchResultActivity$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameSearchResultActivity$1;-><init>(Lcom/youku/gamecenter/GameSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    new-instance v1, Lcom/youku/gamecenter/GameSearchResultActivity$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameSearchResultActivity$2;-><init>(Lcom/youku/gamecenter/GameSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 130
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->gameSearch:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->gameSearch:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/gamecenter/GameSearchResultActivity$3;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameSearchResultActivity$3;-><init>(Lcom/youku/gamecenter/GameSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/gamecenter/GameSearchResultActivity$4;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameSearchResultActivity$4;-><init>(Lcom/youku/gamecenter/GameSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private loadDatas()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "searchWord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->searchWord:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "searchword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "searchData":Landroid/content/Intent;
    const-string/jumbo v2, "searchword"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 225
    .end local v0    # "searchData":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchResultActivity;->onBackPressed()V

    .line 228
    .end local v1    # "searchword":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string/jumbo v0, "\u6e38\u620f\u641c\u7d22\u7ed3\u679c"

    return-object v0
.end method

.method protected handleSearchKeyPressed()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->layout_focus:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->handleSearchRequest(Landroid/widget/LinearLayout;)V

    .line 239
    return-void
.end method

.method protected isShowTitle()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    iput-object p0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchResultActivity;->loadDatas()V

    .line 49
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchResultActivity;->initViews()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity;->mGameInfoListView:Lcom/youku/gamecenter/widgets/GameInfoListView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->unRegisterReceivers()V

    .line 245
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 211
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_center:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->setContentView(I)V

    .line 212
    return-void
.end method
