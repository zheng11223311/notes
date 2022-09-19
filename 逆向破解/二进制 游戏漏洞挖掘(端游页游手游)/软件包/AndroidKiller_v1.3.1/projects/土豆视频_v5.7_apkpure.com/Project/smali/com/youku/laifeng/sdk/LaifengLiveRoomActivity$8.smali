.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initExpressionView()V
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
    .line 983
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 987
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 992
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    .line 996
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const-string v3, "drawable"

    const-string v4, "lf_expression_pager_dot_normal"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    const-string v3, "drawable"

    const-string v4, "lf_expression_pager_dot_select"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1002
    :cond_1
    return-void
.end method
