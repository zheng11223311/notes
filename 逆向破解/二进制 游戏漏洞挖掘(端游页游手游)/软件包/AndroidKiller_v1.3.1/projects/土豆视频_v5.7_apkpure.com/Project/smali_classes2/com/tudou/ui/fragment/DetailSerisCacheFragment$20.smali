.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$20;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->popUpLangList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$20;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$20;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$3002(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;Z)Z

    .line 1376
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$20;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$3600(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1378
    return-void
.end method
