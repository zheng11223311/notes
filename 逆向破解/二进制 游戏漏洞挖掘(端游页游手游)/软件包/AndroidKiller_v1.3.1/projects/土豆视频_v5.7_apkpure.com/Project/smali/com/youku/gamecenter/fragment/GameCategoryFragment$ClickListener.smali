.class Lcom/youku/gamecenter/fragment/GameCategoryFragment$ClickListener;
.super Ljava/lang/Object;
.source "GameCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/fragment/GameCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/fragment/GameCategoryFragment;


# direct methods
.method private constructor <init>(Lcom/youku/gamecenter/fragment/GameCategoryFragment;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$ClickListener;->this$0:Lcom/youku/gamecenter/fragment/GameCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment$ClickListener;->this$0:Lcom/youku/gamecenter/fragment/GameCategoryFragment;

    invoke-virtual {v0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->loadDatas()V

    .line 296
    return-void
.end method
