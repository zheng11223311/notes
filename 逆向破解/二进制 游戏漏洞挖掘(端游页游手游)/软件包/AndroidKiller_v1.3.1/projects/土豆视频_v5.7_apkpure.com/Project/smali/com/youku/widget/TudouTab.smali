.class public Lcom/youku/widget/TudouTab;
.super Landroid/widget/FrameLayout;
.source "TudouTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/TudouTab$OnDoubleClickListener;
    }
.end annotation


# static fields
.field public static final DISCOVERY:I = 0x2

.field public static final HOME:I = 0x0

.field public static IS_CLICK:Z = false

.field public static final MY_TUDOU:I = 0x3

.field public static final PUSH_DETAIL:I = 0x4

.field public static final PUSH_DOWNLOAD:I = 0x5

.field public static final PUSH_GAME_DETAIL:I = 0x7

.field public static final PUSH_LIST:I = 0x6

.field public static final SUBSCRIBE:I = 0x1

.field private static final TabCount:I = 0x4

.field public static final find_5:Ljava/lang/String; = "find"

.field public static final home_5:Ljava/lang/String; = "home"

.field public static final mychannel_5:Ljava/lang/String; = "mychannel"

.field public static sTabHeight:I = 0x0

.field public static final subscribe_5:Ljava/lang/String; = "subscribe"


# instance fields
.field context:Landroid/content/Context;

.field private mDiscovery:Landroid/view/View;

.field public mDiscoveryIcon:Landroid/widget/ImageView;

.field private mDiscoveryImg:Landroid/widget/ImageView;

.field private mDiscoveryText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHome:Landroid/view/View;

.field private mHomeImg:Landroid/widget/ImageView;

.field private mHomeText:Landroid/widget/TextView;

.field private mImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public mMineIcon:Landroid/widget/ImageView;

.field private mMyTudou:Landroid/view/View;

.field private mMyTudouImg:Landroid/widget/ImageView;

.field private mMyTudouText:Landroid/widget/TextView;

.field private mSubscribe:Landroid/view/View;

.field public mSubscribeIcon:Landroid/widget/ImageView;

.field private mSubscribeImg:Landroid/widget/ImageView;

.field private mSubscribeText:Landroid/widget/TextView;

.field private mTabCur:I

.field private mTabOld:I

.field private mTabView:Landroid/view/View;

.field private mTabWidth:I

.field ondoubleClickListener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/widget/TudouTab;->IS_CLICK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    .line 533
    new-instance v1, Lcom/youku/widget/TudouTab$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouTab$1;-><init>(Lcom/youku/widget/TudouTab;)V

    iput-object v1, p0, Lcom/youku/widget/TudouTab;->ondoubleClickListener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    .line 98
    iput-object p1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/youku/widget/TudouTab;->mTabWidth:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/youku/widget/TudouTab;->sTabHeight:I

    .line 111
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    .local v0, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f03016f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    .line 113
    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->initView()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/TudouTab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouTab;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->getTrackSt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/TudouTab;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouTab;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->gettrack()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getTabCode(I)Ljava/lang/String;
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    const-string v0, "home"

    .line 406
    goto :goto_0

    .line 408
    :pswitch_1
    const-string v0, "find"

    .line 409
    goto :goto_0

    .line 414
    :pswitch_2
    const-string v0, "mychannel"

    .line 415
    goto :goto_0

    .line 417
    :pswitch_3
    const-string/jumbo v0, "subscribe"

    .line 418
    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTrackSt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "t1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    invoke-direct {p0, v1}, Lcom/youku/widget/TudouTab;->getTabCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_channelSelect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    invoke-direct {p0, v1}, Lcom/youku/widget/TudouTab;->getTabCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private gettrack()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    invoke-direct {p0, v3}, Lcom/youku/widget/TudouTab;->getTabCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    invoke-direct {p0, v3}, Lcom/youku/widget/TudouTab;->getTabCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x7f0c071e

    .line 118
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0714

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mHome:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0715

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mHomeImg:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0716

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mHomeText:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c071b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscovery:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c071c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryImg:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryText:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c071f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudou:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0720

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0722

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouText:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0717

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribe:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0719

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeImg:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0718

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c071a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeText:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c0721

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mMineIcon:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    const v1, 0x7f0c071d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryIcon:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryText:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHome:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->ondoubleClickListener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouTab;->registerDoubleClickListener(Landroid/view/View;Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscovery:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->ondoubleClickListener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouTab;->registerDoubleClickListener(Landroid/view/View;Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudou:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->ondoubleClickListener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouTab;->registerDoubleClickListener(Landroid/view/View;Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribe:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->ondoubleClickListener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouTab;->registerDoubleClickListener(Landroid/view/View;Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/TudouTab;->mImageViews:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mImageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->mHomeImg:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mImageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->mSubscribeImg:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mImageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mImageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->mDiscoveryImg:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTab;->selectTab(I)V

    .line 162
    return-void
.end method

.method public static registerDoubleClickListener(Landroid/view/View;Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 663
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v0, Lcom/youku/widget/TudouTab$2;

    invoke-direct {v0, p1}, Lcom/youku/widget/TudouTab$2;-><init>(Lcom/youku/widget/TudouTab$OnDoubleClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private sendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    :cond_0
    return-void
.end method

.method private setSelectBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 275
    return-void
.end method

.method private setUnSelectBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 279
    return-void
.end method

.method private showSplashDialog()V
    .locals 8

    .prologue
    .line 474
    const-string/jumbo v6, "splash_sub_dialog_showed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    const-string/jumbo v6, "splash_sub_dialog_showed"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 477
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAttentionList()Lcom/youku/vo/Podcast;

    move-result-object v2

    .line 478
    .local v2, "p":Lcom/youku/vo/Podcast;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v4, "ts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    if-eqz v2, :cond_2

    iget-object v6, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 481
    new-instance v3, Lcom/youku/vo/GuideTab;

    invoke-direct {v3}, Lcom/youku/vo/GuideTab;-><init>()V

    .line 482
    .local v3, "t":Lcom/youku/vo/GuideTab;
    iget-object v6, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users$Subs;->upic:Ljava/lang/String;

    iput-object v6, v3, Lcom/youku/vo/GuideTab;->avatar:Ljava/lang/String;

    .line 483
    iget-object v6, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/Podcast$Users$Subs;

    iget v6, v6, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    .line 484
    iget-object v6, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v6, v6, Lcom/youku/vo/Podcast$Users$Subs;->unic:Ljava/lang/String;

    iput-object v6, v3, Lcom/youku/vo/GuideTab;->podcast_user_nick:Ljava/lang/String;

    .line 485
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    .end local v1    # "i":I
    .end local v3    # "t":Lcom/youku/vo/GuideTab;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 490
    new-instance v0, Lcom/youku/widget/SplashSubedDialog;

    iget-object v6, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-direct {v0, v6, v4}, Lcom/youku/widget/SplashSubedDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 491
    .local v0, "dialog":Lcom/youku/widget/SplashSubedDialog;
    invoke-virtual {v0}, Lcom/youku/widget/SplashSubedDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 492
    .local v5, "win":Landroid/view/Window;
    const v6, 0x7f0e00e4

    invoke-virtual {v5, v6}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 493
    invoke-virtual {v0}, Lcom/youku/widget/SplashSubedDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public backOldSelect()V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 214
    return-void
.end method

.method public getCurTabCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    packed-switch v1, :pswitch_data_0

    .line 350
    :goto_0
    return-object v0

    .line 333
    :pswitch_0
    const-string v0, "home"

    .line 334
    goto :goto_0

    .line 336
    :pswitch_1
    const-string v0, "find"

    .line 337
    goto :goto_0

    .line 342
    :pswitch_2
    const-string v0, "mychannel"

    .line 343
    goto :goto_0

    .line 345
    :pswitch_3
    const-string/jumbo v0, "subscribe"

    .line 346
    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurTabString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    packed-switch v1, :pswitch_data_0

    .line 398
    :goto_0
    return-object v0

    .line 381
    :pswitch_0
    const-string/jumbo v0, "\u9996\u9875tab"

    .line 382
    goto :goto_0

    .line 384
    :pswitch_1
    const-string/jumbo v0, "\u53d1\u73b0tab"

    .line 385
    goto :goto_0

    .line 390
    :pswitch_2
    const-string/jumbo v0, "\u6211\u7684tab"

    .line 391
    goto :goto_0

    .line 393
    :pswitch_3
    const-string/jumbo v0, "\u8ba2\u9605tab"

    .line 394
    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    return v0
.end method

.method public getOldTabString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    packed-switch v1, :pswitch_data_0

    .line 374
    :goto_0
    return-object v0

    .line 357
    :pswitch_0
    const-string/jumbo v0, "\u9996\u9875tab"

    .line 358
    goto :goto_0

    .line 360
    :pswitch_1
    const-string/jumbo v0, "\u53d1\u73b0tab"

    .line 361
    goto :goto_0

    .line 366
    :pswitch_2
    const-string/jumbo v0, "\u6211\u7684tab"

    .line 367
    goto :goto_0

    .line 369
    :pswitch_3
    const-string/jumbo v0, "\u8ba2\u9605tab"

    .line 370
    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 285
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/util/Util;->LAST_EXIT_INTENT_TIME:J

    .line 286
    sput-boolean v2, Lcom/youku/widget/TudouTab;->IS_CLICK:Z

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 289
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 291
    const-string/jumbo v0, "\u9996\u9875Tab\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {p0}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u9996\u9875tab"

    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->gettrack()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 300
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 301
    const-string/jumbo v0, "\u53d1\u73b0Tab\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {p0}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u53d1\u73b0tab"

    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->gettrack()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 305
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 306
    const-string/jumbo v0, "\u6211\u7684Tab\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {p0}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684tab"

    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->gettrack()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 310
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 311
    const-string/jumbo v0, "\u8ba2\u9605Tab\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {p0}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u8ba2\u9605tab"

    invoke-direct {p0}, Lcom/youku/widget/TudouTab;->gettrack()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x7f0c0714 -> :sswitch_0
        0x7f0c0717 -> :sswitch_3
        0x7f0c071b -> :sswitch_1
        0x7f0c071f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 191
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sput v0, Lcom/youku/widget/TudouTab;->sTabHeight:I

    .line 192
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 193
    return-void
.end method

.method public onTabChange(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 524
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    invoke-virtual {p0, v0, p1}, Lcom/youku/widget/TudouTab;->switchDrawable(II)V

    .line 525
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    iput v0, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    .line 526
    iput p1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    .line 527
    return-void
.end method

.method public declared-synchronized onTabClick(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    const/4 v1, 0x1

    .line 426
    monitor-enter p0

    :try_start_0
    const-string v0, "cacheedit"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_1
    :try_start_1
    const-string v0, "TudouTab"

    const-wide/16 v2, 0xfa

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/widget/TudouTab;->IS_CLICK:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 433
    :cond_2
    if-nez p1, :cond_4

    .line 446
    :cond_3
    :goto_1
    :try_start_2
    const-string v0, "Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabClick tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    if-eq v0, p1, :cond_0

    .line 448
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 449
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    invoke-virtual {p0, v0, p1}, Lcom/youku/widget/TudouTab;->switchDrawable(II)V

    .line 450
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    iput v0, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    .line 451
    iput p1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    .line 452
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouTab;->sendMessage(I)V

    goto :goto_0

    .line 435
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 436
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    goto :goto_1

    .line 437
    :cond_5
    if-ne p1, v1, :cond_3

    .line 441
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    invoke-static {}, Lcom/tudou/ui/fragment/SubscribeFragment;->clearSubscribeCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onTabDoubleClick(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    const/4 v1, 0x1

    .line 497
    monitor-enter p0

    :try_start_0
    const-string v0, "TudouTab"

    const-wide/16 v2, 0xfa

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/widget/TudouTab;->IS_CLICK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_0
    monitor-exit p0

    return-void

    .line 502
    :cond_0
    if-nez p1, :cond_3

    .line 512
    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabClick tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    if-eq v0, p1, :cond_2

    .line 514
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    invoke-virtual {p0, v0, p1}, Lcom/youku/widget/TudouTab;->switchDrawable(II)V

    .line 515
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    iput v0, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    .line 516
    iput p1, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    .line 518
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouTab;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 504
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 505
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    goto :goto_1

    .line 506
    :cond_4
    if-ne p1, v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    invoke-static {}, Lcom/tudou/ui/fragment/SubscribeFragment;->clearSubscribeCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public refreshMyIcon()V
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 459
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public selectTab(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 203
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    invoke-virtual {p0, v0, p1}, Lcom/youku/widget/TudouTab;->switchDrawable(II)V

    .line 204
    iget v0, p0, Lcom/youku/widget/TudouTab;->mTabOld:I

    iput v0, p0, Lcom/youku/widget/TudouTab;->mTabCur:I

    .line 206
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/youku/widget/TudouTab;->mHandler:Landroid/os/Handler;

    .line 176
    return-void
.end method

.method public setMyTudouIconGone()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMineIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMineIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public setMyTudouIconShow()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMineIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMineIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public switchDrawable(II)V
    .locals 4
    .param p1, "oldcur"    # I
    .param p2, "newcur"    # I

    .prologue
    const v3, 0x7f0e012f

    const v2, 0x7f0e012e

    .line 217
    if-ne p1, p2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHomeImg:Landroid/widget/ImageView;

    const v1, 0x7f020388

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 222
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHome:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setUnSelectBackground(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryImg:Landroid/widget/ImageView;

    const v1, 0x7f020383

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 225
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscovery:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setUnSelectBackground(Landroid/view/View;)V

    .line 228
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 234
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudou:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setUnSelectBackground(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeImg:Landroid/widget/ImageView;

    const v1, 0x7f020393

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 237
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribe:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setUnSelectBackground(Landroid/view/View;)V

    .line 238
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHomeImg:Landroid/widget/ImageView;

    const v1, 0x7f020389

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 242
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mHome:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setSelectBackground(Landroid/view/View;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryImg:Landroid/widget/ImageView;

    const v1, 0x7f020384

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscoveryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 247
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mDiscovery:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setSelectBackground(Landroid/view/View;)V

    goto/16 :goto_0

    .line 254
    :pswitch_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    :goto_2
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 260
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudou:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setSelectBackground(Landroid/view/View;)V

    goto/16 :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mMyTudouImg:Landroid/widget/ImageView;

    const v1, 0x7f02038e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeImg:Landroid/widget/ImageView;

    const v1, 0x7f020394

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/TudouTab;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 265
    iget-object v0, p0, Lcom/youku/widget/TudouTab;->mSubscribe:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/widget/TudouTab;->setSelectBackground(Landroid/view/View;)V

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
