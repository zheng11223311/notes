.class Lcom/tudou/ui/fragment/MyFavoriteFragment$1;
.super Ljava/lang/Object;
.source "MyFavoriteFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyFavoriteFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyFavoriteFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 176
    if-ne p1, v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$302(Lcom/tudou/ui/fragment/MyFavoriteFragment;Z)Z

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$302(Lcom/tudou/ui/fragment/MyFavoriteFragment;Z)Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x7f0e00fd

    const v2, 0x7f0e00fc

    .line 158
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$100(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$000(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$200(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$000(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$100(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$000(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 164
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$200(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyFavoriteFragment$1;->this$0:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->access$000(Lcom/tudou/ui/fragment/MyFavoriteFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method
