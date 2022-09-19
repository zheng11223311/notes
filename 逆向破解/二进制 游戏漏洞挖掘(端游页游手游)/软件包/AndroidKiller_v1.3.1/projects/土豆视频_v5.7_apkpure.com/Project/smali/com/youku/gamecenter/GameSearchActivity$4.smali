.class Lcom/youku/gamecenter/GameSearchActivity$4;
.super Ljava/lang/Object;
.source "GameSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSearchActivity;->setHotwords(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameSearchActivity$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSearchActivity;->access$100(Lcom/youku/gamecenter/GameSearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->search_keyword_empty:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity$4;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->access$200(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
