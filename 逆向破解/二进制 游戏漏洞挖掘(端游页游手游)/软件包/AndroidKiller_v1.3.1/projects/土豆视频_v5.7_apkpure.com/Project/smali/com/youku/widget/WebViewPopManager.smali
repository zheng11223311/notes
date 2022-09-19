.class public Lcom/youku/widget/WebViewPopManager;
.super Ljava/lang/Object;
.source "WebViewPopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;
    }
.end annotation


# static fields
.field public static showOtherBrowser:Z

.field static wbpManager:Lcom/youku/widget/WebViewPopManager;


# instance fields
.field private a:Landroid/app/Activity;

.field private onItemClickListener:Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;

.field private wbPop:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/widget/WebViewPopManager;->showOtherBrowser:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/youku/widget/WebViewPopManager;->a:Landroid/app/Activity;

    .line 33
    invoke-direct {p0}, Lcom/youku/widget/WebViewPopManager;->initPopupWindow()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/WebViewPopManager;)Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/WebViewPopManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->onItemClickListener:Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/WebViewPopManager;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/WebViewPopManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/WebViewPopManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/WebViewPopManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/youku/widget/WebViewPopManager;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/youku/widget/WebViewPopManager;->getInstance(Landroid/app/Activity;Z)Lcom/youku/widget/WebViewPopManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;Z)Lcom/youku/widget/WebViewPopManager;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "showSysBrowser"    # Z

    .prologue
    .line 25
    sput-boolean p1, Lcom/youku/widget/WebViewPopManager;->showOtherBrowser:Z

    .line 27
    new-instance v0, Lcom/youku/widget/WebViewPopManager;

    invoke-direct {v0, p0}, Lcom/youku/widget/WebViewPopManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/youku/widget/WebViewPopManager;->wbpManager:Lcom/youku/widget/WebViewPopManager;

    .line 28
    sget-object v0, Lcom/youku/widget/WebViewPopManager;->wbpManager:Lcom/youku/widget/WebViewPopManager;

    return-object v0
.end method

.method private initPopupWindow()V
    .locals 12

    .prologue
    const v11, 0x7f0c0259

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x2

    .line 37
    iget-object v5, p0, Lcom/youku/widget/WebViewPopManager;->a:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 38
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03006e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 40
    .local v3, "popupWindow":Landroid/view/View;
    const v5, 0x7f0c025a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "inbrowser":Landroid/view/View;
    sget-boolean v5, Lcom/youku/widget/WebViewPopManager;->showOtherBrowser:Z

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 45
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v3, v8, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    .line 54
    :goto_0
    iget-object v5, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 55
    iget-object v5, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 56
    iget-object v5, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const v5, 0x7f0c0257

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 59
    .local v4, "refresh":Landroid/view/View;
    new-instance v5, Lcom/youku/widget/WebViewPopManager$1;

    invoke-direct {v5, p0}, Lcom/youku/widget/WebViewPopManager$1;-><init>(Lcom/youku/widget/WebViewPopManager;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v5, 0x7f0c0258

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "copylink":Landroid/view/View;
    new-instance v5, Lcom/youku/widget/WebViewPopManager$2;

    invoke-direct {v5, p0}, Lcom/youku/widget/WebViewPopManager$2;-><init>(Lcom/youku/widget/WebViewPopManager;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v5, Lcom/youku/widget/WebViewPopManager$3;

    invoke-direct {v5, p0}, Lcom/youku/widget/WebViewPopManager$3;-><init>(Lcom/youku/widget/WebViewPopManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 48
    .end local v0    # "copylink":Landroid/view/View;
    .end local v4    # "refresh":Landroid/view/View;
    :cond_0
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/youku/widget/WebViewPopManager;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a03f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v5, v3, v6, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    .line 51
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setOnPopItemClickListener(Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/widget/WebViewPopManager;->onItemClickListener:Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;

    .line 111
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager;->wbPop:Landroid/widget/PopupWindow;

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {v1}, Lcom/youku/util/Util;->px2dip(F)I

    move-result v1

    neg-int v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
