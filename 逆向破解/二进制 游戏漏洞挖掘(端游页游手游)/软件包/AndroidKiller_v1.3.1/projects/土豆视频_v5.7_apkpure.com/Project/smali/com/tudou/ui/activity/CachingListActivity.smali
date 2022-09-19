.class public Lcom/tudou/ui/activity/CachingListActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "CachingListActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf",
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;
    }
.end annotation


# static fields
.field private static final GET_DOWNLOADING_DONE:I = 0x6e

.field private static final SET_ALL_BUTTON_ENABLE:I = 0x70

.field private static final SET_DOWNLOADING_STATE:I = 0x6f

.field private static final tag:Ljava/lang/String; = "CachingListActivity"


# instance fields
.field public adapter:Lcom/youku/adapter/CachingListAdapter;

.field allPauseClickListener:Landroid/view/View$OnClickListener;

.field allStartClickListener:Landroid/view/View$OnClickListener;

.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field private btnCachingAllPause:Landroid/widget/LinearLayout;

.field private btnCachingAllStart:Landroid/widget/LinearLayout;

.field private cachingAllEdit:Landroid/widget/LinearLayout;

.field private cachingNone:Lcom/youku/widget/HintView;

.field private deleteList:Lcom/youku/util/DeleteCachingItemList;

.field private download:Lcom/tudou/service/download/DownloadManager;

.field private downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private downloadinfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field editClickListener:Landroid/view/View$OnClickListener;

.field private editable:Z

.field public handler:Landroid/os/Handler;

.field private hasDeleted:Z

.field private height:I

.field private infocount:I

.field private leftBack:Landroid/widget/ImageView;

.field private listView:Landroid/widget/ListView;

.field lister:Lcom/tudou/service/download/OnChangeListener;

.field private listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

.field private lock:Z

.field private mIntent:Landroid/content/Intent;

.field private middleTxt:Landroid/widget/TextView;

.field public onAllFinish:Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;

.field onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

.field private rightEditLayout:Landroid/widget/LinearLayout;

.field private rightTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 75
    iput v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->infocount:I

    .line 79
    iput-boolean v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->editable:Z

    .line 83
    invoke-static {}, Lcom/youku/util/DeleteCachingItemList;->getInstance()Lcom/youku/util/DeleteCachingItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    .line 90
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$1;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$3;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->editClickListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$4;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->allStartClickListener:Landroid/view/View$OnClickListener;

    .line 252
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$6;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->allPauseClickListener:Landroid/view/View$OnClickListener;

    .line 421
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$8;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->handler:Landroid/os/Handler;

    .line 513
    iput-boolean v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->hasDeleted:Z

    .line 557
    iput-boolean v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->lock:Z

    .line 558
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$13;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$13;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 825
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$26;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$26;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    .line 866
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$27;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$27;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->onAllFinish:Lcom/tudou/ui/activity/CachingListActivity$OnAllPauseOrStartFinish;

    .line 893
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$28;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$28;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->lister:Lcom/tudou/service/download/OnChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/activity/CachingListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->editable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/activity/CachingListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->infocount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/util/DeleteCachingItemList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/youku/widget/PageBottomDeleteLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/activity/CachingListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->lock:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/tudou/ui/activity/CachingListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/tudou/ui/activity/CachingListActivity;->lock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->allStartThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/activity/CachingListActivity;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->download:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/activity/CachingListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->isEnoughSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->btnCachingAllStart:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/activity/CachingListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->btnCachingAllPause:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/activity/CachingListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->setCachingBodyView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/activity/CachingListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/CachingListActivity;->setCachingNoneVis(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/activity/CachingListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/CachingListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private allStartThread()V
    .locals 3

    .prologue
    .line 230
    const-string/jumbo v0, "\u7f13\u5b58\u9875\u5168\u90e8\u5f00\u59cb\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58\u9875-\u5168\u90e8\u5f00\u59cb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->isEnoughSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const v0, 0x7f0d02be

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 241
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$5;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity$5;->start()V

    goto :goto_0
.end method

.method private deleteSelected()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u4eb2\uff0c\u786e\u8ba4\u5220\u9664\u6b63\u5728\u7f13\u5b58\u8bb0\u5f55\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$11;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/CachingListActivity$11;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$10;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/CachingListActivity$10;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/activity/CachingListActivity$9;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/CachingListActivity$9;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 511
    return-void
.end method

.method private deleteSelectedItems()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->hasDeleted:Z

    .line 520
    invoke-static {p0}, Lcom/youku/widget/YoukuLoading;->shownotauto(Landroid/content/Context;)V

    .line 521
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 522
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$12;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity$12;->start()V

    .line 545
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 144
    const v0, 0x7f0c0223

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightTxt:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    const v0, 0x7f0c06b1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->middleTxt:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->middleTxt:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v0, 0x7f0c0251

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    const v0, 0x7f0c024f

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->leftBack:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->leftBack:Landroid/widget/ImageView;

    const v1, 0x7f0208e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->leftBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/ui/activity/CachingListActivity$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/CachingListActivity$2;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->editClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->initTitle()V

    .line 131
    const v0, 0x7f0c04aa

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->btnCachingAllStart:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f0c04ab

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->btnCachingAllPause:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f0c04a9

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingAllEdit:Landroid/widget/LinearLayout;

    .line 134
    const v0, 0x7f0c04ae

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageBottomDeleteLayout;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    .line 135
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->onClickListener:Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setOnBtnListener(Lcom/youku/widget/PageBottomDeleteLayout$OnBtnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->btnCachingAllStart:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->allStartClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->btnCachingAllPause:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->allPauseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0c04ad

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 140
    const v0, 0x7f0c04a8

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingNone:Lcom/youku/widget/HintView;

    .line 141
    return-void
.end method

.method private isEnoughSpace()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 932
    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v3}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 933
    .local v1, "savePath":Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 939
    :cond_0
    :goto_0
    return v2

    .line 936
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 939
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private registBroadCastReciver()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tudou/ui/activity/CachingListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method private setCachingBodyView()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 804
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 809
    :cond_1
    :goto_0
    return v0

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0
.end method

.method private setCachingNoneVis(Z)V
    .locals 4
    .param p1, "isVis"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 768
    if-eqz p1, :cond_3

    .line 770
    iput-boolean v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->editable:Z

    .line 771
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0, v3}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 775
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingNone:Lcom/youku/widget/HintView;

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingNone:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->CACHE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 795
    :cond_2
    :goto_0
    return-void

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 784
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageBottomDeleteLayout;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 787
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 789
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 790
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 791
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingNone:Lcom/youku/widget/HintView;

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingNone:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    goto :goto_0
.end method

.method private setListViewHeight(Z)V
    .locals 9
    .param p1, "canedit"    # Z

    .prologue
    .line 180
    iget-object v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    .local v3, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 183
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 185
    .local v4, "location":[I
    iget-object v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingAllEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 186
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 187
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 188
    iget v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->height:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v7, v8

    .line 189
    .local v0, "bottomBarHeight":I
    const/4 v7, 0x1

    aget v6, v4, v7

    .line 190
    .local v6, "y":I
    iget-object v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v7}, Lcom/youku/widget/PageBottomDeleteLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .local v1, "deleteLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->height:I

    sub-int/2addr v7, v6

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int/2addr v7, v8

    sub-int v5, v7, v0

    .line 193
    .local v5, "temp":I
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 194
    iget-object v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .end local v0    # "bottomBarHeight":I
    .end local v1    # "deleteLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v4    # "location":[I
    .end local v5    # "temp":I
    .end local v6    # "y":I
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v7, -0x1

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 197
    iget-object v7, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private show2G3GDialogOpen()V
    .locals 3

    .prologue
    .line 735
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 736
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u76ee\u524d\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u786e\u5b9a\u7f13\u5b58\u89c6\u9891 ?"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 737
    const-string/jumbo v1, "\u786e\u5b9a\u7f13\u5b58"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/CachingListActivity$23;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 743
    const-string/jumbo v1, "\u7a0d\u540e\u518d\u8bf4"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/CachingListActivity$24;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 748
    new-instance v1, Lcom/tudou/ui/activity/CachingListActivity$25;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/CachingListActivity$25;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 757
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 758
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 759
    return-void
.end method

.method private show2G3GDialogOpen(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 634
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 635
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u76ee\u524d\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u786e\u5b9a\u7f13\u5b58\u89c6\u9891 ?"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 636
    const-string/jumbo v1, "\u786e\u5b9a\u7f13\u5b58"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/activity/CachingListActivity$14;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 647
    const-string/jumbo v1, "\u7a0d\u540e\u518d\u8bf4"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/CachingListActivity$15;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 652
    new-instance v1, Lcom/tudou/ui/activity/CachingListActivity$16;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/CachingListActivity$16;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 661
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 662
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 663
    return-void
.end method

.method private track(I)V
    .locals 3
    .param p1, "isNoti"    # I

    .prologue
    .line 888
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 889
    const-string/jumbo v0, "\u901a\u77e5\u680f\u6b63\u5728\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-string/jumbo v1, "\u901a\u77e5\u680f"

    const-string/jumbo v2, "\u901a\u77e5\u680f-\u6b63\u5728\u7f13\u5b58"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 549
    iget-boolean v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->hasDeleted:Z

    if-eqz v1, :cond_0

    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "isdelete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tudou/ui/activity/CachingListActivity;->setResult(ILandroid/content/Intent;)V

    .line 554
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 555
    return-void
.end method

.method public getEditable()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->editable:Z

    return v0
.end method

.method public declared-synchronized initData(Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    const-string v5, "CachingListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v3

    .line 329
    .local v3, "manager":Lcom/tudou/service/download/DownloadManager;
    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    .line 333
    :goto_0
    invoke-virtual {v3}, Lcom/tudou/service/download/DownloadManager;->getDownloadingData()Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 334
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    if-nez v4, :cond_1

    .line 358
    :goto_1
    monitor-exit p0

    return-void

    .line 332
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    .end local v3    # "manager":Lcom/tudou/service/download/DownloadManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 337
    .restart local v3    # "manager":Lcom/tudou/service/download/DownloadManager;
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    :try_start_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 338
    .local v2, "iter":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 351
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 352
    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 354
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    const/4 v5, 0x0

    sput-boolean v5, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 355
    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 357
    iget-object v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/tudou/ui/activity/CachingListActivity;->infocount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->download:Lcom/tudou/service/download/DownloadManager;

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->requestWindowFeature(I)Z

    .line 109
    const v0, 0x7f030103

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->registBroadCastReciver()V

    .line 111
    invoke-static {p0}, Lcom/youku/util/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->height:I

    .line 112
    invoke-direct {p0}, Lcom/tudou/ui/activity/CachingListActivity;->initView()V

    .line 114
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->mIntent:Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "isNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->track(I)V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 815
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->setEditable(Z)V

    .line 818
    const/4 v0, 0x1

    .line 822
    :goto_0
    return v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->finish()V

    .line 822
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 122
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity;->mIntent:Landroid/content/Intent;

    .line 123
    const-string v0, "isNotification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->track(I)V

    .line 124
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onPause()V

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->lister:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->removeOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 301
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->download:Lcom/tudou/service/download/DownloadManager;

    iget-object v1, p0, Lcom/tudou/ui/activity/CachingListActivity;->lister:Lcom/tudou/service/download/OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->addOnChangeListener(Lcom/tudou/service/download/OnChangeListener;)V

    .line 291
    const-string v0, "CachingListActivity"

    const-string v1, "onresume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->refresh()V

    .line 293
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 295
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/tudou/ui/activity/CachingListActivity$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/CachingListActivity$7;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity$7;->start()V

    .line 408
    return-void
.end method

.method public setEditable(Z)V
    .locals 3
    .param p1, "editable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 361
    iput-boolean p1, p0, Lcom/tudou/ui/activity/CachingListActivity;->editable:Z

    .line 362
    if-eqz p1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->leftBack:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->stopAllTask()V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/adapter/CachingListAdapter;->setEdit(Z)V

    .line 371
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CachingListAdapter;->notifyDataSetChanged()V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->getEditable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/CachingListActivity;->setListViewHeight(Z)V

    .line 375
    if-eqz p1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightTxt:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->middleTxt:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91\u6b63\u5728\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->deleteList:Lcom/youku/util/DeleteCachingItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteCachingItemList;->clearQueue()V

    .line 380
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->listviewp:Lcom/youku/widget/PageBottomDeleteLayout;

    invoke-virtual {v0}, Lcom/youku/widget/PageBottomDeleteLayout;->initial()V

    .line 381
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingAllEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    :goto_1
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->leftBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->startNewTask()V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->rightTxt:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->middleTxt:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity;->cachingAllEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public setUpdate(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 910
    const/4 v1, 0x0

    .line 911
    .local v1, "infos":Lcom/tudou/service/download/DownloadInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 912
    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 913
    .restart local v1    # "infos":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 914
    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity;->downloadinfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/activity/CachingListActivity;->adapter:Lcom/youku/adapter/CachingListAdapter;

    invoke-virtual {v3, p1}, Lcom/youku/adapter/CachingListAdapter;->setUpdate(Lcom/tudou/service/download/DownloadInfo;)V

    .line 929
    return-void

    .line 911
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public show2G3GDialog()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 704
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 705
    const-string/jumbo v1, "\u5141\u8bb8"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/CachingListActivity$20;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 712
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$21;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/CachingListActivity$21;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 717
    new-instance v1, Lcom/tudou/ui/activity/CachingListActivity$22;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/CachingListActivity$22;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 726
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 727
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 728
    return-void
.end method

.method public show2G3GDialog(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 670
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 671
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/CachingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 672
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/CachingListActivity$17;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 677
    const-string/jumbo v1, "\u5141\u8bb8"

    new-instance v2, Lcom/tudou/ui/activity/CachingListActivity$18;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/activity/CachingListActivity$18;-><init>(Lcom/tudou/ui/activity/CachingListActivity;Lcom/youku/widget/TudouDialog;Lcom/tudou/service/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 686
    new-instance v1, Lcom/tudou/ui/activity/CachingListActivity$19;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/CachingListActivity$19;-><init>(Lcom/tudou/ui/activity/CachingListActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 695
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 696
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 697
    return-void
.end method
