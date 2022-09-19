.class public abstract Lio/rong/imkit/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CONFIGURATION_INFINITE:Lde/keyboardsurfer/android/widget/crouton/Configuration;

.field public static final TOKEN:Ljava/lang/String; = "RONG_TOKEN"

.field public static final UI_RESTORE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    invoke-direct {v0}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->setDuration(I)Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Configuration$Builder;->build()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v0

    sput-object v0, Lio/rong/imkit/fragment/BaseFragment;->CONFIGURATION_INFINITE:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/BaseFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/BaseFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private obtainView(Landroid/view/LayoutInflater;IILjava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "color"    # I
    .param p3, "res"    # I
    .param p4, "notice"    # Ljava/lang/CharSequence;

    .prologue
    .line 138
    sget v1, Lio/rong/imkit/R$layout;->rc_wi_notice:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    return-object v0
.end method

.method private obtainView(Landroid/view/LayoutInflater;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "color"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "notice"    # Ljava/lang/CharSequence;

    .prologue
    .line 128
    sget v1, Lio/rong/imkit/R$layout;->rc_wi_notice:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    if-lez p2, :cond_0

    .line 132
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lio/rong/imkit/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->onRestoreUI()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hiddenNotification()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->cancelAllCroutons()V

    .line 148
    return-void
.end method

.method public abstract onBackPressed()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "token":Ljava/lang/String;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseFragment;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/BaseFragment;->mThread:Ljava/lang/Thread;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v1, "RONG_TOKEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-nez v1, :cond_2

    .line 49
    :cond_1
    const-string v1, "BaseFragment"

    const-string v2, "auto reconnect"

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Lio/rong/imkit/fragment/BaseFragment$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/BaseFragment$1;-><init>(Lio/rong/imkit/fragment/BaseFragment;)V

    invoke-static {v0, v1}, Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;

    .line 68
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 93
    return-void
.end method

.method public abstract onRestoreUI()V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const-string v0, "RONG_TOKEN"

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/fragment/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public showNotification(IILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "icon"    # I
    .param p3, "notice"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 112
    .local v0, "isNotice":Z
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->cancelAllCroutons()V

    .line 115
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lio/rong/imkit/fragment/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v1, p1, p2, p3}, Lio/rong/imkit/fragment/BaseFragment;->obtainView(Landroid/view/LayoutInflater;IILjava/lang/CharSequence;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->make(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v1

    sget-object v2, Lio/rong/imkit/fragment/BaseFragment;->CONFIGURATION_INFINITE:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    invoke-virtual {v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->setConfiguration(Lde/keyboardsurfer/android/widget/crouton/Configuration;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v1

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0
.end method

.method public showNotification(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "notice"    # Ljava/lang/CharSequence;

    .prologue
    .line 119
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 120
    .local v0, "isNotice":Z
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->cancelAllCroutons()V

    .line 123
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lio/rong/imkit/fragment/BaseFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v1, p1, p2, p3}, Lio/rong/imkit/fragment/BaseFragment;->obtainView(Landroid/view/LayoutInflater;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v3, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->make(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v1

    sget-object v2, Lio/rong/imkit/fragment/BaseFragment;->CONFIGURATION_INFINITE:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    invoke-virtual {v1, v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->setConfiguration(Lde/keyboardsurfer/android/widget/crouton/Configuration;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v1

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0
.end method

.method public showNotification(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "notice"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 105
    .local v0, "isNotice":Z
    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$color;->rc_notice_warning:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_notice_wraning:I

    invoke-virtual {p0, v1, v2, p1}, Lio/rong/imkit/fragment/BaseFragment;->showNotification(IILjava/lang/CharSequence;)V

    goto :goto_0
.end method
