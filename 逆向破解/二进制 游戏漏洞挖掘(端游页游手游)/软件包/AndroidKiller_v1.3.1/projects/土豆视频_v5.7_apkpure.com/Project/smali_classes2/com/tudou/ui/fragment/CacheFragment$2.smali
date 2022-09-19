.class Lcom/tudou/ui/fragment/CacheFragment$2;
.super Ljava/lang/Object;
.source "CacheFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x1

    .line 122
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

    .line 123
    if-ne p1, v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/CacheFragment;->access$502(Lcom/tudou/ui/fragment/CacheFragment;Z)Z

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$502(Lcom/tudou/ui/fragment/CacheFragment;Z)Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0, p1}, Lcom/tudou/ui/fragment/CacheFragment;->access$202(Lcom/tudou/ui/fragment/CacheFragment;I)I

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$400(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/youku/vo/CacheTitleHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/vo/CacheTitleHolder;->selectTab(I)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$2;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0, p1}, Lcom/tudou/ui/fragment/CacheFragment;->access$300(Lcom/tudou/ui/fragment/CacheFragment;I)V

    .line 113
    return-void
.end method
