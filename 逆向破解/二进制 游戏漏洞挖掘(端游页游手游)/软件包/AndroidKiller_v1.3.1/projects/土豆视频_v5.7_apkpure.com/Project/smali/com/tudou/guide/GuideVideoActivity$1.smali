.class Lcom/tudou/guide/GuideVideoActivity$1;
.super Ljava/lang/Object;
.source "GuideVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/GuideVideoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/GuideVideoActivity;


# direct methods
.method constructor <init>(Lcom/tudou/guide/GuideVideoActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/guide/GuideVideoActivity$1;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$1;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    invoke-static {v0}, Lcom/tudou/guide/GuideVideoActivity;->access$000(Lcom/tudou/guide/GuideVideoActivity;)V

    .line 69
    return-void
.end method
