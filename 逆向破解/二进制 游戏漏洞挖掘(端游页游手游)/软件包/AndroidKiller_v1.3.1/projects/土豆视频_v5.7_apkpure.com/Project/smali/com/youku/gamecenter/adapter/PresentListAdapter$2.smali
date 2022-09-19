.class Lcom/youku/gamecenter/adapter/PresentListAdapter$2;
.super Ljava/lang/Object;
.source "PresentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/PresentListAdapter;->onItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/PresentListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$2;->this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->access$000(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    return-void
.end method
