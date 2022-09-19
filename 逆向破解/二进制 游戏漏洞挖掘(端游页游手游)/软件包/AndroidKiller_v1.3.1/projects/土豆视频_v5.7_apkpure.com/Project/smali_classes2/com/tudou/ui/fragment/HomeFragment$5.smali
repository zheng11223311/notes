.class Lcom/tudou/ui/fragment/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$5;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 471
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->tudou_logo:Lcom/youku/vo/Initial$TudouLogo;

    iget-object v0, v1, Lcom/youku/vo/Initial$TudouLogo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 472
    .local v0, "info":Lcom/youku/vo/SkipInfo;
    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$5;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 475
    :cond_0
    return-void
.end method
