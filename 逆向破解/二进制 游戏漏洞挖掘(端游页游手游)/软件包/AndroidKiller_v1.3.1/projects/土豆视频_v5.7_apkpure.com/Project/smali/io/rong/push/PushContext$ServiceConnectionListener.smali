.class Lio/rong/push/PushContext$ServiceConnectionListener;
.super Ljava/lang/Object;
.source "PushContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionListener"
.end annotation


# instance fields
.field count:Ljava/util/concurrent/CountDownLatch;

.field mHandler:Lio/rong/imlib/IVersionHandler;

.field mIsBind:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lio/rong/push/PushContext;


# direct methods
.method public constructor <init>(Lio/rong/push/PushContext;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 155
    iput-object p1, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->this$0:Lio/rong/push/PushContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->packageName:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->count:Ljava/util/concurrent/CountDownLatch;

    .line 158
    return-void
.end method


# virtual methods
.method public getHandler()Lio/rong/imlib/IVersionHandler;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->mHandler:Lio/rong/imlib/IVersionHandler;

    return-object v0
.end method

.method public isBind()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->mIsBind:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 171
    const-string v0, "onServiceConnected"

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p2}, Lio/rong/imlib/IVersionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IVersionHandler;

    move-result-object v0

    iput-object v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->mHandler:Lio/rong/imlib/IVersionHandler;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->mIsBind:Z

    .line 174
    iget-object v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->this$0:Lio/rong/push/PushContext;

    iget-object v0, v0, Lio/rong/push/PushContext;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/push/PushContext$ServiceConnectionListener$1;

    invoke-direct {v1, p0}, Lio/rong/push/PushContext$ServiceConnectionListener$1;-><init>(Lio/rong/push/PushContext$ServiceConnectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 197
    const-string v0, "onServiceDisconnected"

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->mHandler:Lio/rong/imlib/IVersionHandler;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/push/PushContext$ServiceConnectionListener;->mIsBind:Z

    .line 200
    return-void
.end method
