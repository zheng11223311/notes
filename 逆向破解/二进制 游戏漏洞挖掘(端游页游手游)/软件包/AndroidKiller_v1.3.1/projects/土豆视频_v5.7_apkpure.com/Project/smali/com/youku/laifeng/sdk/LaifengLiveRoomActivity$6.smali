.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$6;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->checkUserNeedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 867
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$6;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$6;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;I)V

    .line 871
    return-void
.end method
