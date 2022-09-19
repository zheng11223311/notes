.class public Lcom/unicom/iap/utils/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field public static instance:Lcom/unicom/iap/utils/ToastManager;


# instance fields
.field private context:Landroid/content/Context;

.field private toast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unicom/iap/utils/ToastManager;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/ToastManager;
    .locals 1
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/unicom/iap/utils/ToastManager;->instance:Lcom/unicom/iap/utils/ToastManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/unicom/iap/utils/ToastManager;

    invoke-direct {v0, p0}, Lcom/unicom/iap/utils/ToastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unicom/iap/utils/ToastManager;->instance:Lcom/unicom/iap/utils/ToastManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/unicom/iap/utils/ToastManager;->instance:Lcom/unicom/iap/utils/ToastManager;

    return-object v0
.end method


# virtual methods
.method public showToast(I)V
    .locals 3
    .param p1, "msg"    # I

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/unicom/iap/utils/ToastManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1
.end method
