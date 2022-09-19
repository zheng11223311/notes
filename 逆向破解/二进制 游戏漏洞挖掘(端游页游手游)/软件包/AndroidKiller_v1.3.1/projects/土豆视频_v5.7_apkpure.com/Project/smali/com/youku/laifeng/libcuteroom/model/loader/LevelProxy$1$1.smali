.class Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1$1;
.super Ljava/lang/Object;
.source "LevelProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1$1;->this$1:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1$1;->this$1:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->access$000(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V

    .line 62
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1$1;->this$1:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->access$100(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V

    .line 63
    return-void
.end method
