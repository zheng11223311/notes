.class Lcom/tudou/ui/fragment/CacheFragment$3$1;
.super Ljava/lang/Object;
.source "CacheFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFragment$3;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

.field final synthetic val$allpause:Z


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFragment$3;Z)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iput-boolean p2, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->val$allpause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->val$allpause:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$600(Lcom/tudou/ui/fragment/CacheFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5168\u90e8\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment;->allStartClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$600(Lcom/tudou/ui/fragment/CacheFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFragment;->allStartClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$600(Lcom/tudou/ui/fragment/CacheFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5168\u90e8\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CachingFragment;->allStartClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v0, v0, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFragment;->access$600(Lcom/tudou/ui/fragment/CacheFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment$3$1;->this$1:Lcom/tudou/ui/fragment/CacheFragment$3;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CacheFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CacheFragment;->access$700(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/adapter/CacheViewPagerAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/CachingFragment;->allPauseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
