.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initRecommendRoomsView()V
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
    .line 956
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRoomClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 959
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 961
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 963
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 964
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 965
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 968
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/corncop/virgo/VirgoNetWorkState;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/LaifengSDKApplication;->getEnterRoomApi()Lcom/youku/api/EventDoApi;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$1900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/youku/api/EventDoApi;->LoginByCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setGone()V

    .line 972
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setVideoLoadingVisible()V

    .line 977
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "str_player_notice_video_error"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v1

    .line 975
    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    goto :goto_0
.end method
