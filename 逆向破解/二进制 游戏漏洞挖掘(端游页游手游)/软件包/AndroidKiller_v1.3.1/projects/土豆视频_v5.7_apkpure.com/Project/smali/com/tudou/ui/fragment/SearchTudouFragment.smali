.class public Lcom/tudou/ui/fragment/SearchTudouFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SearchTudouFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "NewApi",
        "ResourceAsColor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;,
        Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;
    }
.end annotation


# static fields
.field private static final CHANGE_EDITTEXT_TEXT:I = 0xc0

.field public static final GET_INPUT_BOX_HOT_WORD_SUCCESS:I = 0xc2

.field public static final GET_SEARCH_SUGGEST_WORDS_FAIL_NOT_NULL:I = 0xbe

.field public static final GET_SEARCH_SUGGEST_WORDS_FAIL_NULL:I = 0xc1

.field public static final GET_SEARCH_SUGGEST_WORDS_SUCCESS:I = 0xbf

.field public static MINITIAL_SEARCH_WORD:Ljava/lang/String; = null

.field public static final SEARCH_BOKE:I = 0x2

.field public static final SEARCH_VIDEO:I = 0x1

.field private static historyFragment:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

.field private static hotFragment:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

.field public static loadHistory:Z

.field private static resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

.field public static startTime:J

.field private static tag:Ljava/lang/String;


# instance fields
.field public curfragment:I

.field private currentWordTime:J

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public head:Lcom/youku/widget/SearchHeadLayout;

.field private hintText:Ljava/lang/String;

.field public keyType:Ljava/lang/String;

.field public lastFragment:I

.field public lastKeyWord:Ljava/lang/String;

.field public lastTab:I

.field public onEditListener:Lcom/youku/widget/SearchHeadLayout$OnEditListener;

.field public onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

.field public onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

.field private oncreated:Z

.field private sManager:Lcom/tudou/ui/fragment/SearchManager;

.field public searchHisTab:I

.field private suggestAdapter:Lcom/tudou/adapter/SearchSuggestAdapter;

.field private suggestListRelative:Landroid/widget/RelativeLayout;

.field private suggestListView:Landroid/widget/ListView;

.field public tempKeyWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "SearchTudouActivity"

    sput-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    .line 50
    const-string v0, "mInitial.search_word"

    sput-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->MINITIAL_SEARCH_WORD:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->loadHistory:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    .line 96
    iput v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    .line 97
    iput v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastFragment:I

    .line 98
    iput v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastTab:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->lastKeyWord:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->oncreated:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->hintText:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    .line 112
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouFragment$1;-><init>(Lcom/tudou/ui/fragment/SearchTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->handler:Landroid/os/Handler;

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 492
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->currentWordTime:J

    .line 494
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouFragment$3;-><init>(Lcom/tudou/ui/fragment/SearchTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->onEditListener:Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    .line 629
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SearchTudouFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->currentWordTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/SearchTudouFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->switchTab(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/SearchTudouFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->currentWordTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SearchTudouFragment;)Lcom/tudou/adapter/SearchSuggestAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestAdapter:Lcom/tudou/adapter/SearchSuggestAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SearchTudouFragment;Lcom/youku/vo/DropWordResult;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p1, "x1"    # Lcom/youku/vo/DropWordResult;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestItemClick(Lcom/youku/vo/DropWordResult;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListRelative:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600()Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->hotFragment:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->isShowSearchTab(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/SearchTudouFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/SearchTudouFragment;)Lcom/tudou/ui/fragment/SearchManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    return-object v0
.end method

.method private changeEditTextValue(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 382
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 383
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    const/16 v1, 0xc0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 385
    iget-object v1, p3, Lcom/tudou/ui/fragment/SearchTudouFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    iput p1, p3, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    .line 389
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 226
    const v1, 0x7f0c00b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "activityRootView":Landroid/view/View;
    const v1, 0x7f0c05c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/SearchHeadLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    .line 228
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->hintText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->hintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->setEditHintText(Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->onEditListener:Lcom/youku/widget/SearchHeadLayout$OnEditListener;

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->setOnEditListener(Lcom/youku/widget/SearchHeadLayout$OnEditListener;)V

    .line 235
    const v1, 0x7f0c05e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListView:Landroid/widget/ListView;

    .line 236
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 237
    new-instance v1, Lcom/tudou/adapter/SearchSuggestAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/SearchSuggestAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/vo/DropWordResult;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestAdapter:Lcom/tudou/adapter/SearchSuggestAdapter;

    .line 238
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestAdapter:Lcom/tudou/adapter/SearchSuggestAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    const v1, 0x7f0c05e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListRelative:Landroid/widget/RelativeLayout;

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/SearchTudouFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/SearchTudouFragment$2;-><init>(Lcom/tudou/ui/fragment/SearchTudouFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 258
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->MINITIAL_SEARCH_WORD:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->setEditHintText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isShowSearchTab(Z)V
    .locals 2
    .param p1, "hiddlen"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    sget-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    const-string v1, "isShowSearchTab : View.GONE"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    if-eqz p1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListRelative:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->suggestListRelative:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private suggestItemClick(Lcom/youku/vo/DropWordResult;ILandroid/view/View;)V
    .locals 12
    .param p1, "tempWord"    # Lcom/youku/vo/DropWordResult;
    .param p2, "arg2"    # I
    .param p3, "arg1"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 271
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const-string/jumbo v0, "toSearch"

    const-wide/16 v8, 0x1f4

    invoke-static {v0, v8, v9}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p1, Lcom/youku/vo/DropWordResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/vo/SearchSuggestWord;

    .line 278
    .local v11, "suggestKey":Lcom/youku/vo/SearchSuggestWord;
    iget-object v0, v11, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 283
    const-string v0, "2"

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->kref:Ljava/lang/String;

    .line 284
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "refercode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "search|hintVideosearch||key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v4, Lcom/youku/vo/SokuKubox;

    invoke-direct {v4}, Lcom/youku/vo/SokuKubox;-><init>()V

    .line 288
    .local v4, "kubox":Lcom/youku/vo/SokuKubox;
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    iput-object v0, v4, Lcom/youku/vo/SokuKubox;->aaid:Ljava/lang/String;

    .line 289
    iget-object v0, v11, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    iput-object v0, v4, Lcom/youku/vo/SokuKubox;->k:Ljava/lang/String;

    .line 290
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/youku/vo/SokuKubox;->ki:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v0}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/youku/vo/SokuKubox;->ok:Ljava/lang/String;

    .line 293
    iget-object v0, v11, Lcom/youku/vo/SearchSuggestWord;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/youku/vo/SokuKubox;->pos:Ljava/lang/String;

    .line 295
    const-string/jumbo v0, "\u641c\u7d22\u9875\u641c\u7d22\u5efa\u8bae\u76f4\u8fbe\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22\u9875-\u5efa\u8bae\u76f4\u8fbe\u8bcd"

    iget v5, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendSokuKuboxEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuKubox;I)V

    .line 298
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v11, Lcom/youku/vo/SearchSuggestWord;->aid:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v5, v11, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 299
    iget-object v0, v11, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/tudou/ui/fragment/SearchTudouFragment;->addHistoryWord(Ljava/lang/String;I)V

    .line 300
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchManager;->getAgainHotHisWord(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0

    .line 302
    :cond_2
    invoke-direct {p0, v7}, Lcom/tudou/ui/fragment/SearchTudouFragment;->isShowSearchTab(Z)V

    .line 303
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/youku/vo/SokuKubox;->pos:Ljava/lang/String;

    .line 304
    const-string/jumbo v0, "\u641c\u7d22\u9875\u641c\u7d22\u5efa\u8bae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22\u9875-\u5efa\u8bae\u8bcd"

    iget v5, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendSokuKuboxEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuKubox;I)V

    .line 307
    const-string/jumbo v0, "\u63d0\u793a\u8bcd"

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 308
    iget-object v7, v11, Lcom/youku/vo/SearchSuggestWord;->name:Ljava/lang/String;

    iget v9, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    const/4 v10, 0x0

    move-object v5, p0

    move-object v8, p0

    invoke-virtual/range {v5 .. v10}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    goto/16 :goto_0
.end method

.method private switchTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    .line 263
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v0, p1}, Lcom/youku/widget/SearchHeadLayout;->switchTab(I)V

    .line 264
    return-void
.end method


# virtual methods
.method public addHistoryWord(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tab"    # I

    .prologue
    .line 485
    move-object v0, p1

    .line 487
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/youku/data/SQLiteManagerTudou;->addToSearchHistory(Ljava/lang/String;I)V

    .line 490
    :cond_0
    return-void
.end method

.method public canBack(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 607
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 608
    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-ne v0, v6, :cond_2

    .line 609
    :cond_0
    const-string v2, ""

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    move v1, v6

    .line 616
    :cond_1
    :goto_0
    return v1

    .line 611
    :cond_2
    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-nez v0, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    .line 186
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "search_word"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->hintText:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchManager;->excueGetIcons()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->oncreated:Z

    .line 195
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    .line 199
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    const v1, 0x7f03013f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->initView(Landroid/view/View;)V

    .line 205
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    sget-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->hotFragment:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    if-eqz v0, :cond_0

    .line 394
    sput-object v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->hotFragment:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .line 395
    :cond_0
    sget-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->historyFragment:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    if-eqz v0, :cond_1

    .line 396
    sput-object v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->historyFragment:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .line 397
    :cond_1
    sget-object v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

    if-eqz v0, :cond_2

    .line 398
    sput-object v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 400
    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->handler:Landroid/os/Handler;

    .line 401
    :cond_3
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 402
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 211
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->oncreated:Z

    if-eqz v0, :cond_0

    .line 212
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->oncreated:Z

    .line 213
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    iget v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    move-object v0, p0

    move-object v3, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    .line 216
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 636
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 640
    packed-switch p2, :pswitch_data_0

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 642
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStop()V

    .line 221
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->remove()V

    .line 222
    return-void
.end method

.method public sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V
    .locals 7
    .param p1, "target"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p4, "tab"    # I
    .param p5, "cancel"    # Z

    .prologue
    .line 326
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZZ)V

    .line 327
    return-void
.end method

.method public sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZZ)V
    .locals 5
    .param p1, "target"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p4, "tab"    # I
    .param p5, "cancel"    # Z
    .param p6, "isnoqc"    # Z

    .prologue
    .line 342
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    iget v2, p3, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    :goto_0
    iput v2, p3, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->changeEditTextValue(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;)V

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_1
    return-void

    :cond_0
    move v2, p4

    .line 343
    goto :goto_0

    .line 349
    :pswitch_0
    :try_start_0
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    const-string/jumbo v3, "target======0"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->hotFragment:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {p1, v2, p3}, Lcom/tudou/ui/fragment/SearchManager;->goFragmentHot(ILcom/tudou/ui/fragment/SearchTudouHotFragment;Lcom/tudou/ui/fragment/SearchTudouFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException: No view found for id for fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    const-string/jumbo v3, "target======1"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->historyFragment:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {p1, v2, p3}, Lcom/tudou/ui/fragment/SearchManager;->goFragmentHistory(ILcom/tudou/ui/fragment/SearchTudouHistoryFragment;Lcom/tudou/ui/fragment/SearchTudouFragment;)V

    .line 357
    invoke-direct {p3, p4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->switchTab(I)V

    goto :goto_1

    .line 360
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    .line 361
    invoke-direct {p3, p4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->switchTab(I)V

    .line 362
    iget v2, p3, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    invoke-virtual {p3, p2, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->addHistoryWord(Ljava/lang/String;I)V

    .line 364
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->tag:Ljava/lang/String;

    const-string/jumbo v3, "target======2"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v2, "searchtab"

    iget v3, p3, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    const-string v2, "isnoqc"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    sget-object v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {p1, v2, v0, p3, p5}, Lcom/tudou/ui/fragment/SearchManager;->goFragmentResult(ILcom/tudou/ui/fragment/SearchResultFragment;Landroid/os/Bundle;Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public searchOnResultPage()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 445
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v1}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string/jumbo v1, "\u641c\u7d22\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v1}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, p0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->changeEditTextValue(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;)V

    .line 450
    const-string/jumbo v1, "\u5173\u952e\u8bcd"

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 451
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->isShowSearchTab(Z)V

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 453
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    if-ne v1, v2, :cond_2

    .line 454
    const-string/jumbo v1, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search|keywordVideosearch||key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v3}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string/jumbo v1, "\u641c\u7d22\u9875\u641c\u7d22\u6309\u94ae\u70b9\u51fb\uff08\u641c\u89c6\u9891\uff09"

    const-class v2, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u641c\u7d22\u9875-\u641c\u7d22\u6309\u94ae\uff08\u641c\u89c6\u9891\uff09"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 459
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v2}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;->onVideoClcik(Ljava/lang/String;)V

    .line 468
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v1}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    invoke-virtual {p0, v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->addHistoryWord(Ljava/lang/String;I)V

    goto :goto_0

    .line 460
    :cond_2
    iget v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    if-ne v1, v3, :cond_1

    .line 461
    const-string/jumbo v1, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search|keywordChannelsearch||key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v3}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v1, "\u641c\u7d22\u9875\u641c\u7d22\u6309\u94ae\u70b9\u51fb\uff08\u641c\u9891\u9053\uff09"

    const-class v2, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u641c\u7d22\u9875-\u641c\u7d22\u6309\u94ae\uff08\u641c\u9891\u9053\uff09"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 466
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v2}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;->onBokeClick(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public toSearch()V
    .locals 12

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 405
    const-string/jumbo v0, "toSearch"

    const-wide/16 v10, 0x1f4

    invoke-static {v0, v10, v11}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v0}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, "inword":Ljava/lang/String;
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v0}, Lcom/youku/widget/SearchHeadLayout;->getHintText()Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "hintword":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, v7

    .line 411
    .local v2, "searchWord":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    const-string/jumbo v0, "\u641c\u7d22\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "searchWord":Ljava/lang/String;
    :cond_1
    move-object v2, v8

    .line 410
    goto :goto_1

    .line 415
    .restart local v2    # "searchWord":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 419
    :cond_3
    sput-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    .line 420
    sput-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    .line 422
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 423
    const-string v0, "3"

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->kref:Ljava/lang/String;

    .line 424
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    if-ne v0, v9, :cond_5

    .line 426
    const-string/jumbo v0, "refercode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "search|keywordVideosearch||key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v4}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v0, "\u641c\u7d22\u9875\u641c\u7d22\u6309\u94ae\u70b9\u51fb\uff08\u641c\u89c6\u9891\uff09"

    const-class v3, Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u641c\u7d22\u9875-\u641c\u7d22\u6309\u94ae\uff08\u641c\u89c6\u9891\uff09"

    invoke-static {v0, v3, v4, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 438
    :cond_4
    :goto_2
    invoke-direct {p0, v9}, Lcom/tudou/ui/fragment/SearchTudouFragment;->isShowSearchTab(Z)V

    .line 439
    const-string/jumbo v0, "\u5173\u952e\u8bcd"

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 440
    iget v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    move-object v0, p0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    goto/16 :goto_0

    .line 431
    :cond_5
    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->searchHisTab:I

    if-ne v0, v1, :cond_4

    .line 432
    const-string/jumbo v0, "refercode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "search|keywordChannelsearch||key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {v4}, Lcom/youku/widget/SearchHeadLayout;->getEditText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v0, "\u641c\u7d22\u9875\u641c\u7d22\u6309\u94ae\u70b9\u51fb\uff08\u641c\u9891\u9053\uff09"

    const-class v3, Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u641c\u7d22\u9875-\u641c\u7d22\u6309\u94ae\uff08\u641c\u9891\u9053\uff09"

    invoke-static {v0, v3, v4, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2
.end method
