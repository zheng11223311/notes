.class Lio/rong/push/PushContext$ServiceConnectionListener$1;
.super Ljava/lang/Object;
.source "PushContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/push/PushContext$ServiceConnectionListener;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/push/PushContext$ServiceConnectionListener;


# direct methods
.method constructor <init>(Lio/rong/push/PushContext$ServiceConnectionListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    :try_start_0
    iget-object v2, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v2, v2, Lio/rong/push/PushContext$ServiceConnectionListener;->mHandler:Lio/rong/imlib/IVersionHandler;

    invoke-interface {v2}, Lio/rong/imlib/IVersionHandler;->getVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v1

    .line 179
    .local v1, "version":Lio/rong/imlib/model/AppVersion;
    if-eqz v1, :cond_0

    .line 180
    iget-object v2, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v2, v2, Lio/rong/push/PushContext$ServiceConnectionListener;->this$0:Lio/rong/push/PushContext;

    iget-object v2, v2, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/push/DBHelper;->insertOrReplace(Lio/rong/imlib/model/AppVersion;)V

    .line 182
    :cond_0
    iget-object v2, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v2, v2, Lio/rong/push/PushContext$ServiceConnectionListener;->this$0:Lio/rong/push/PushContext;

    iget-object v2, v2, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    iget-object v2, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v2, v2, Lio/rong/push/PushContext$ServiceConnectionListener;->count:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v1    # "version":Lio/rong/imlib/model/AppVersion;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 186
    iget-object v2, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v2, v2, Lio/rong/push/PushContext$ServiceConnectionListener;->count:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 189
    iget-object v2, p0, Lio/rong/push/PushContext$ServiceConnectionListener$1;->this$1:Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v2, v2, Lio/rong/push/PushContext$ServiceConnectionListener;->count:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
