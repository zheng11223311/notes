.class Lcom/youku/LaifengSDKApplication$2;
.super Ljava/lang/Object;
.source "LaifengSDKApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/LaifengSDKApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/LaifengSDKApplication;


# direct methods
.method constructor <init>(Lcom/youku/LaifengSDKApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/LaifengSDKApplication;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/youku/LaifengSDKApplication$2;->this$0:Lcom/youku/LaifengSDKApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication$2;->this$0:Lcom/youku/LaifengSDKApplication;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/LaifengSDKApplication;->access$002(Lcom/youku/LaifengSDKApplication;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 148
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LaifengSDKApplication"

    const-string v1, "onServiceConnected[]>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication$2;->this$0:Lcom/youku/LaifengSDKApplication;

    invoke-static {v0}, Lcom/youku/LaifengSDKApplication;->access$100(Lcom/youku/LaifengSDKApplication;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication$2;->this$0:Lcom/youku/LaifengSDKApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/LaifengSDKApplication;->access$002(Lcom/youku/LaifengSDKApplication;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 155
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication$2;->this$0:Lcom/youku/LaifengSDKApplication;

    invoke-static {v0}, Lcom/youku/LaifengSDKApplication;->access$200(Lcom/youku/LaifengSDKApplication;)V

    .line 156
    return-void
.end method
