.class public Lcom/youku/widget/YoukuLoading;
.super Ljava/lang/Object;
.source "YoukuLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/YoukuLoading$LoadingDialog;
    }
.end annotation


# static fields
.field private static final ADD:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "YoukuLoading"

.field private static mHandler:Landroid/os/Handler;

.field private static mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

.field private static mYoukuLoading:Lcom/youku/widget/YoukuLoading;


# instance fields
.field private dismiss:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/youku/widget/YoukuLoading$2;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoading$2;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/youku/widget/YoukuLoading$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoading$1;-><init>(Lcom/youku/widget/YoukuLoading;)V

    iput-object v0, p0, Lcom/youku/widget/YoukuLoading;->dismiss:Ljava/lang/Runnable;

    .line 216
    return-void
.end method

.method public static dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v0, "YoukuLoading"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "YoukuLoading"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->dismiss()V

    .line 185
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 193
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 194
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 206
    return-void
.end method

.method public static setOnDissmissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2
    .param p0, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 89
    const-string v0, "YoukuLoading"

    const-string/jumbo v1, "setOnDissmissListener"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0, p0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3e8

    .line 102
    const-string v0, "YoukuLoading"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-eqz v0, :cond_1

    .line 107
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 109
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->dismiss()V

    .line 113
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->release()V

    .line 114
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 117
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lcom/youku/widget/YoukuLoading;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoading;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 120
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 121
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->show()V

    .line 124
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    :cond_4
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isonback"    # Z

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string v0, "YoukuLoading"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-nez p0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-eqz v0, :cond_1

    .line 45
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 47
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->dismiss()V

    .line 51
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->release()V

    .line 52
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 55
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-nez v0, :cond_3

    .line 56
    new-instance v0, Lcom/youku/widget/YoukuLoading;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoading;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 58
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/YoukuLoading$LoadingDialog;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 59
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->show()V

    goto :goto_0
.end method

.method public static showNoLimit(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, "YoukuLoading"

    const-string/jumbo v1, "showNoLimit"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-nez p0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-eqz v0, :cond_1

    .line 136
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 138
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->dismiss()V

    .line 142
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->release()V

    .line 143
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 146
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-nez v0, :cond_3

    .line 147
    new-instance v0, Lcom/youku/widget/YoukuLoading;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoading;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 149
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 150
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->show()V

    goto :goto_0
.end method

.method public static showNoLimitTouchModel(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    const-string v0, "YoukuLoading"

    const-string/jumbo v1, "showNoLimitTouchModel"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-nez p0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-eqz v0, :cond_1

    .line 161
    sput-object v3, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 163
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->dismiss()V

    .line 167
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->release()V

    .line 168
    sput-object v3, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 171
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-nez v0, :cond_3

    .line 172
    new-instance v0, Lcom/youku/widget/YoukuLoading;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoading;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 174
    :cond_3
    new-instance v0, Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-direct {v0, p0, v2, v2}, Lcom/youku/widget/YoukuLoading$LoadingDialog;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 175
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->show()V

    goto :goto_0
.end method

.method public static shownotauto(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "YoukuLoading"

    const-string/jumbo v1, "shownotauto"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-eqz v0, :cond_1

    .line 68
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 70
    :cond_1
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->dismiss()V

    .line 74
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->release()V

    .line 75
    sput-object v2, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 78
    :cond_2
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Lcom/youku/widget/YoukuLoading;

    invoke-direct {v0}, Lcom/youku/widget/YoukuLoading;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mYoukuLoading:Lcom/youku/widget/YoukuLoading;

    .line 81
    :cond_3
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    new-instance v0, Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    .line 83
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    sget-object v0, Lcom/youku/widget/YoukuLoading;->mLoadingDialog:Lcom/youku/widget/YoukuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->show()V

    goto :goto_0
.end method
