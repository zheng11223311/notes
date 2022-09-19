.class public Lcom/tudou/ui/fragment/BuildInBrowserFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "BuildInBrowserFragment.java"

# interfaces
.implements Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;
.implements Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;


# static fields
.field private static final TAG:Ljava/lang/String; = "BuildInBrowserActivity"


# instance fields
.field private contentView:Lcom/tudou/webview/IntegratedWebView;

.field private img_back:Landroid/widget/ImageView;

.field private img_flush:Landroid/widget/ImageView;

.field private img_share:Landroid/widget/ImageView;

.field private isScreenLandscape:Z

.field private mImage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleChange:Z

.field private txt_title:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private wbManager:Lcom/youku/widget/WebViewPopManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitleChange:Z

    .line 39
    const-string v0, "http://r3.ykimg.com/051000005588F9066714C004DE05C356"

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mImage:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->isScreenLandscape:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_flush:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Lcom/youku/widget/WebViewPopManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->wbManager:Lcom/youku/widget/WebViewPopManager;

    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "i":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->setUrl(Ljava/lang/String;)V

    .line 130
    :cond_0
    const-string v1, "laifeng"

    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/widget/WebViewPopManager;->getInstance(Landroid/app/Activity;Z)Lcom/youku/widget/WebViewPopManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->wbManager:Lcom/youku/widget/WebViewPopManager;

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->wbManager:Lcom/youku/widget/WebViewPopManager;

    invoke-virtual {v1, p0}, Lcom/youku/widget/WebViewPopManager;->setOnPopItemClickListener(Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;)V

    .line 136
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/widget/WebViewPopManager;->getInstance(Landroid/app/Activity;)Lcom/youku/widget/WebViewPopManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->wbManager:Lcom/youku/widget/WebViewPopManager;

    goto :goto_0
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0c01ee

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    const v3, 0x7f0c0094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitle:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "title_change"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitleChange:Z

    .line 81
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->isScreenLandscape:Z

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_1
    const v1, 0x7f0c06b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->txt_title:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->txt_title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v1, 0x7f0c024f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_back:Landroid/widget/ImageView;

    .line 90
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_back:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_back:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/ui/fragment/BuildInBrowserFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment$1;-><init>(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0c0d06

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_flush:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_flush:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    const v1, 0x7f0c0db7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_share:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http://login.tudou.com/forget/index.do"

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    const-string/jumbo v3, "tudou.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "http://www.tudou.com/about/account.php"

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_share:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_share:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;-><init>(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :goto_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_flush:Landroid/widget/ImageView;

    const v2, 0x7f0203b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_flush:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/ui/fragment/BuildInBrowserFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment$3;-><init>(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void

    :cond_1
    move v1, v2

    .line 80
    goto/16 :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_share:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->img_share:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public canBack(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 149
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->isScreenLandscape:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 160
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v1}, Lcom/tudou/webview/IntegratedWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v1}, Lcom/tudou/webview/IntegratedWebView;->goBack()V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyLink()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0}, Lcom/tudou/webview/IntegratedWebView;->copyLink()V

    .line 167
    :cond_0
    return-void
.end method

.method public goInBrowser(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0, p1}, Lcom/tudou/webview/IntegratedWebView;->goInBrowser(Landroid/app/Activity;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 50
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isSetUserAgent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, "isSetUserAgent":Z
    new-instance v2, Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-direct {v2, v1, p0, v0}, Lcom/tudou/webview/IntegratedWebView;-><init>(Lcom/tudou/ui/activity/BuildInBrowserActivity;Lcom/tudou/ui/fragment/BuildInBrowserFragment;Z)V

    iput-object v2, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    .line 52
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v1, p0}, Lcom/tudou/webview/IntegratedWebView;->setOritationChangeActivity(Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;)V

    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->initData()V

    .line 54
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->initTitle(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0}, Lcom/tudou/webview/IntegratedWebView;->onDestroy()V

    .line 73
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0}, Lcom/tudou/webview/IntegratedWebView;->onPause()V

    .line 61
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0}, Lcom/tudou/webview/IntegratedWebView;->onResume()V

    .line 67
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 68
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0}, Lcom/tudou/webview/IntegratedWebView;->reloadUrl()V

    .line 173
    :cond_0
    return-void
.end method

.method public setReceiveImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mImage:Ljava/lang/String;

    .line 194
    :cond_0
    return-void
.end method

.method public setReceiveTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->txt_title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitleChange:Z

    if-eqz v0, :cond_0

    .line 184
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->mTitle:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->url:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.tudou.com/programs/view/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.tudou.com/albumplay/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.tudou.com/listplay/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->isScreenLandscape:Z

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->isScreenLandscape:Z

    invoke-virtual {v0, v1}, Lcom/tudou/webview/IntegratedWebView;->setVideoPlayerClient(Z)V

    .line 144
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->contentView:Lcom/tudou/webview/IntegratedWebView;

    invoke-virtual {v0, p1}, Lcom/tudou/webview/IntegratedWebView;->loadUrl(Ljava/lang/String;)V

    .line 145
    return-void
.end method
