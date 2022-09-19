.class Lcom/youku/gamecenter/widgets/ElasticTextArea$1;
.super Ljava/lang/Object;
.source "ElasticTextArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/ElasticTextArea;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/ElasticTextArea;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;->this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 36
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;->this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->access$000(Lcom/youku/gamecenter/widgets/ElasticTextArea;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;->this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->access$000(Lcom/youku/gamecenter/widgets/ElasticTextArea;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;->this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->access$000(Lcom/youku/gamecenter/widgets/ElasticTextArea;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 38
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;->this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    invoke-static {v0}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->access$100(Lcom/youku/gamecenter/widgets/ElasticTextArea;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ElasticTextArea$1;->this$0:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->access$202(Lcom/youku/gamecenter/widgets/ElasticTextArea;Z)Z

    .line 42
    :cond_0
    return-void
.end method
