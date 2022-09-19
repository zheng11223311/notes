.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$11;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
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
    .line 1071
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$11;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1075
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$11;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1078
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$11;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1080
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
