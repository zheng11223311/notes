.class public Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;
.super Landroid/app/Dialog;
.source "CommonDialogLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;
    }
.end annotation


# static fields
.field public static final FROM_TYPE_DEFAULT:I = 0xb

.field public static final FROM_TYPE_FORCE:I = 0xc

.field private static mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mFromType:I

.field private mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;

.field private mLoginButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-string/jumbo v0, "style"

    const-string v1, "lf_common_dialog_theme"

    invoke-static {p1, v0, v1}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    .prologue
    .line 14
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mFromType:I

    return v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;)Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mInstance:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;

    .line 75
    return-void
.end method

.method public getFromType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mFromType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "lf_dialog_login"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->setContentView(I)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->setCancelable(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "cancel_button"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mCancelButton:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$1;-><init>(Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "login_button"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mLoginButton:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$2;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$2;-><init>(Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public setFromType(I)V
    .locals 0
    .param p1, "fromType"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mFromType:I

    .line 65
    return-void
.end method

.method public setOnLoginDlgClickListener(Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/CommonDialogLogin;->mListener:Lcom/youku/laifeng/sdk/widget/CommonDialogLogin$OnLoginDlgClickListener;

    .line 84
    return-void
.end method
