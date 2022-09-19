.class public Lcom/youku/player/ui/widget/InteractionWebView;
.super Landroid/widget/FrameLayout;
.source "InteractionWebView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InteractionWebView"


# instance fields
.field private isWebViewShown:Z

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mWidth:I

.field private transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "width"    # I
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 37
    iput-object p1, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 38
    iput-object p3, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragment:Landroid/support/v4/app/Fragment;

    .line 39
    iput p2, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mWidth:I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/youku/player/ui/widget/InteractionWebView;->initData(Landroid/support/v4/app/FragmentActivity;I)V

    .line 42
    return-void
.end method

.method private initData(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "width"    # I

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$layout;->yp_interaction_webview:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/InteractionWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    return-void
.end method


# virtual methods
.method public addInteractionFragment()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 56
    iget-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 57
    iget-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->transaction:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/youku/android/player/R$id;->container:I

    iget-object v2, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    iget-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 59
    return-void
.end method

.method public hideWebView()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "InteractionWebView"

    const-string v1, "hide webview"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 78
    iget-object v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/youku/player/ui/widget/InteractionWebView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 79
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/InteractionWebView;->setVisibility(I)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown:Z

    .line 81
    return-void
.end method

.method public isWebViewShown()Z
    .locals 3

    .prologue
    .line 62
    const-string v0, "InteractionWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get webview state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown:Z

    return v0
.end method

.method public setVisiable()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/InteractionWebView;->setVisibility(I)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown:Z

    .line 69
    return-void
.end method
