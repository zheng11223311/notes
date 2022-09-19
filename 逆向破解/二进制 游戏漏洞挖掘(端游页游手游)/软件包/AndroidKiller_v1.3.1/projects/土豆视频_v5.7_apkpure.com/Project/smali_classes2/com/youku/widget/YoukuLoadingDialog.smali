.class public Lcom/youku/widget/YoukuLoadingDialog;
.super Ljava/lang/Object;
.source "YoukuLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;
    }
.end annotation


# static fields
.field private static final ADD:I = 0x3e8

.field private static mHandler:Landroid/os/Handler;

.field private static mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

.field private static mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$1;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog$1;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    sput-object v2, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 218
    sput-object v2, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 219
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove()V
    .locals 0

    .prologue
    .line 230
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 231
    return-void
.end method

.method public static setOnDissmissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 91
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0, p0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x3e8

    .line 103
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-eqz v0, :cond_1

    .line 107
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 109
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V

    .line 113
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 116
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-nez v0, :cond_3

    .line 117
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 119
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 120
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->show()V

    .line 123
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    :cond_4
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mesId"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x3e8

    .line 130
    if-nez p0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-eqz v0, :cond_1

    .line 134
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 136
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V

    .line 140
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 143
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-nez v0, :cond_3

    .line 144
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 146
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 147
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->show()V

    .line 150
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    :cond_4
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isonback"    # Z

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-eqz v0, :cond_1

    .line 50
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 52
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V

    .line 56
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 59
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 62
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 63
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->show()V

    goto :goto_0
.end method

.method public static showNoLimit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-eqz v0, :cond_1

    .line 161
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 163
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V

    .line 167
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 170
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-nez v0, :cond_3

    .line 171
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 173
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 174
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 176
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->show()V

    goto :goto_0
.end method

.method public static showNoLimitTouchModel(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x3e8

    .line 180
    if-nez p0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-eqz v0, :cond_1

    .line 184
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 186
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 187
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V

    .line 190
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 193
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-nez v0, :cond_3

    .line 194
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 196
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 197
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0, v2}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->show()V

    .line 200
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :cond_4
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static shownotauto(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-eqz v0, :cond_1

    .line 71
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 73
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->dismiss()V

    .line 77
    sput-object v1, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 80
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    if-nez v0, :cond_3

    .line 81
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoadingDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mYoukuLoading:Lcom/youku/widget/YoukuLoadingDialog;

    .line 83
    :cond_3
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .line 85
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    sget-object v0, Lcom/youku/widget/YoukuLoadingDialog;->mLoadingDialog:Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->show()V

    goto :goto_0
.end method
