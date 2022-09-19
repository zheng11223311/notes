.class Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;
.super Ljava/lang/Object;
.source "LibAppApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/LibAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/LibAppApplication;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/LibAppApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;->this$0:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 91
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LibAppApplication"

    const-string v1, "onServiceConnected[]>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;->this$0:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->access$002(Lcom/youku/laifeng/libcuteroom/LibAppApplication;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 93
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;->this$0:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->access$002(Lcom/youku/laifeng/libcuteroom/LibAppApplication;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 98
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;->this$0:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->access$100(Lcom/youku/laifeng/libcuteroom/LibAppApplication;)V

    .line 100
    return-void
.end method
