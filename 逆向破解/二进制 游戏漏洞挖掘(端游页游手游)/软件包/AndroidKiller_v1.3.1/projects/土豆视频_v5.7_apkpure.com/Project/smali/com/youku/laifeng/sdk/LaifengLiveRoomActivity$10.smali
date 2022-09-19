.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1059
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1062
    if-eqz p2, :cond_0

    .line 1063
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sdk_chat_click"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1065
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1068
    :cond_0
    return-void
.end method
