.class Lcom/youku/widget/SearchHeadLayout$7;
.super Ljava/lang/Object;
.source "SearchHeadLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/SearchHeadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchHeadLayout;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchHeadLayout;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/youku/widget/SearchHeadLayout$7;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 269
    const-string v1, "\u641c\u7d22\u9875-\u641c\u89c6\u9891/\u9891\u9053\u4e0b\u62c9\u83dc\u5355\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7528\u6237\u5728\u641c\u7d22\u9875\u70b9\u51fb\u4e86\u641c\u89c6\u9891/\u9891\u9053\u4e0b\u62c9\u83dc\u5355"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v1, "\u81ea\u9891\u9053"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Lcom/youku/widget/SearchHeadLayout$7;->this$0:Lcom/youku/widget/SearchHeadLayout;

    invoke-static {v1, v0}, Lcom/youku/widget/SearchHeadLayout;->access$300(Lcom/youku/widget/SearchHeadLayout;Ljava/util/ArrayList;)V

    .line 275
    return-void
.end method
