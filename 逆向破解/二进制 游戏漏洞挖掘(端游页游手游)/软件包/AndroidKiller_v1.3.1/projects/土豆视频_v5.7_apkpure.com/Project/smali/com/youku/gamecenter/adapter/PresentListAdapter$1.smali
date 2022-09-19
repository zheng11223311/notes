.class Lcom/youku/gamecenter/adapter/PresentListAdapter$1;
.super Ljava/lang/Object;
.source "PresentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/adapter/PresentListAdapter;->setUIDatas(Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;Lcom/youku/gamecenter/present/PresentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

.field final synthetic val$info:Lcom/youku/gamecenter/present/PresentInfo;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/adapter/PresentListAdapter;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    iput-object p2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;->val$info:Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-static {v0}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->access$200(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Lcom/youku/gamecenter/present/PresentButtonHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;->val$info:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-static {v2}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->access$000(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "2"

    iget-object v4, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;->this$0:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-static {v4}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->access$100(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/present/PresentButtonHelper;->handleClickAction(Lcom/youku/gamecenter/present/PresentInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
