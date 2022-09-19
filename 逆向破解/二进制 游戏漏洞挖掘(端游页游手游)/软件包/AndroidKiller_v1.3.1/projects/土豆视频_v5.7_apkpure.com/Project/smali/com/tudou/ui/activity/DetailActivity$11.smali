.class Lcom/tudou/ui/activity/DetailActivity$11;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$img:Ljava/lang/String;

.field final synthetic val$tShareType:Ljava/lang/String;

.field final synthetic val$tShareUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$videotitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$11;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$img:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$videotitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$tShareUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$tShareType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$11;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$img:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$videotitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$tShareUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/ui/activity/DetailActivity$11;->val$tShareType:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/tudou/ui/activity/DetailActivity;->access$1000(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    return-void
.end method
