.class public Lcom/youku/widget/SplashSubedDialog;
.super Landroid/app/Dialog;
.source "SplashSubedDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cardLogin:Landroid/widget/ImageView;

.field private gridView:Landroid/widget/GridView;

.field private iconClose:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private noLoginTip:Landroid/widget/ImageView;

.field private splashFooter:Landroid/widget/RelativeLayout;

.field private subedCount:Landroid/widget/TextView;

.field tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    const v0, 0x7f0e007e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput-object p1, p0, Lcom/youku/widget/SplashSubedDialog;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/youku/widget/SplashSubedDialog;->tabs:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 82
    const v0, 0x7f0c060d

    invoke-virtual {p0, v0}, Lcom/youku/widget/SplashSubedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->gridView:Landroid/widget/GridView;

    .line 83
    const v0, 0x7f0c0cdc

    invoke-virtual {p0, v0}, Lcom/youku/widget/SplashSubedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->cardLogin:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0c09d8

    invoke-virtual {p0, v0}, Lcom/youku/widget/SplashSubedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->iconClose:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0c0cdb

    invoke-virtual {p0, v0}, Lcom/youku/widget/SplashSubedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->noLoginTip:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0c0cda

    invoke-virtual {p0, v0}, Lcom/youku/widget/SplashSubedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->subedCount:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->cardLogin:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->iconClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0c060e

    invoke-virtual {p0, v0}, Lcom/youku/widget/SplashSubedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->splashFooter:Landroid/widget/RelativeLayout;

    .line 90
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->splashFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->noLoginTip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->splashFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/youku/widget/SplashSubedDialog;->noLoginTip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 103
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "goLoginIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/widget/SplashSubedDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/youku/widget/SplashSubedDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    .line 106
    invoke-virtual {p0}, Lcom/youku/widget/SplashSubedDialog;->dismiss()V

    goto :goto_0

    .line 109
    .end local v0    # "goLoginIntent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/youku/widget/SplashSubedDialog;->dismiss()V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c09d8 -> :sswitch_1
        0x7f0c0cdc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v3, Lcom/youku/widget/SplashSubedDialog$1;

    invoke-direct {v3, p0}, Lcom/youku/widget/SplashSubedDialog$1;-><init>(Lcom/youku/widget/SplashSubedDialog;)V

    invoke-virtual {p0, v3}, Lcom/youku/widget/SplashSubedDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    const v3, 0x7f0302d6

    invoke-virtual {p0, v3}, Lcom/youku/widget/SplashSubedDialog;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/youku/widget/SplashSubedDialog;->initView()V

    .line 67
    new-instance v0, Lcom/tudou/guide/SplashAdapter;

    iget-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/tudou/ui/activity/BaseActivity;

    invoke-direct {v0, v3}, Lcom/tudou/guide/SplashAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;)V

    .line 68
    .local v0, "adapter":Lcom/tudou/guide/SplashAdapter;
    iget-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->tabs:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->tabs:Ljava/util/ArrayList;

    .line 70
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GuideTab;

    .line 72
    .local v2, "tab":Lcom/youku/vo/GuideTab;
    iget-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tab":Lcom/youku/vo/GuideTab;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tudou/guide/SplashAdapter;->setShowBtnSub(Z)V

    .line 76
    iget-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/tudou/guide/SplashAdapter;->setResult(Ljava/util/ArrayList;)V

    .line 77
    iget-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v3, p0, Lcom/youku/widget/SplashSubedDialog;->subedCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/youku/widget/SplashSubedDialog;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
