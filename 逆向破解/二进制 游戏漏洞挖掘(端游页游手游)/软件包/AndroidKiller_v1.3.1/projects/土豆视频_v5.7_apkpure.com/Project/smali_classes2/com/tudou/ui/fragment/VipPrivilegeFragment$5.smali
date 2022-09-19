.class Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;
.super Ljava/lang/Object;
.source "VipPrivilegeFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$IMembershipCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipPrivilegeFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/youku/vo/UserBean;)V
    .locals 12
    .param p1, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    const-wide/32 v10, 0x186a4

    const-wide/32 v8, 0x186a2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 198
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 199
    .local v0, "userBean":Lcom/youku/vo/UserBean;
    iget-wide v2, v0, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$100(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0203ac

    const v4, 0x7f0203ad

    invoke-static {v1, v2, v3, v4}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$200(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/widget/TextView;II)V

    .line 206
    :goto_0
    iget-object v1, p1, Lcom/youku/vo/UserBean;->remain_days:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$300(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-wide v2, v0, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$300(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u9ec4\u91d1\u4f1a\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$400(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/vo/UserBean;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u8fc7\u671f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_1
    return-void

    .line 201
    :cond_0
    iget-wide v2, v0, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$100(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f02057e

    const v4, 0x7f020580

    invoke-static {v1, v2, v3, v4}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$200(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/widget/TextView;II)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$100(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f020620

    invoke-static {v1, v2, v3, v5}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$200(Lcom/tudou/ui/fragment/VipPrivilegeFragment;Landroid/widget/TextView;II)V

    goto :goto_0

    .line 211
    :cond_2
    iget-wide v2, v0, Lcom/youku/vo/UserBean;->mmid:J

    cmp-long v1, v2, v10

    if-nez v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$300(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u767d\u94f6\u4f1a\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$400(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/vo/UserBean;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u8fc7\u671f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$300(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/VipPrivilegeFragment$5;->this$0:Lcom/tudou/ui/fragment/VipPrivilegeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->access$300(Lcom/tudou/ui/fragment/VipPrivilegeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
