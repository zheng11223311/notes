.class Lcom/tudou/adapter/IndexPageAdapter$23;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initNormalTitle(Lcom/tudou/adapter/IndexItemNormalTitle;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$label_1:Lcom/youku/vo/ModuleLabel;

.field final synthetic val$mainSkipInfo:Lcom/youku/vo/SkipInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/SkipInfo;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$23;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$23;->val$label_1:Lcom/youku/vo/ModuleLabel;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$23;->val$mainSkipInfo:Lcom/youku/vo/SkipInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$23;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$23;->val$label_1:Lcom/youku/vo/ModuleLabel;

    iget-object v1, v1, Lcom/youku/vo/ModuleLabel;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$23;->val$mainSkipInfo:Lcom/youku/vo/SkipInfo;

    invoke-static {v0, v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$1200(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/SkipInfo;Lcom/youku/vo/SkipInfo;)V

    .line 1124
    return-void
.end method
