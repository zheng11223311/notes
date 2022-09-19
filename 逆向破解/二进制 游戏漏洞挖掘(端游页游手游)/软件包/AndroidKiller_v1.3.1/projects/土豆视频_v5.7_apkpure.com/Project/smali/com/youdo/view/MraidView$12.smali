.class Lcom/youdo/view/MraidView$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->open(Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;

.field final synthetic val$back:Z

.field final synthetic val$forward:Z

.field final synthetic val$refresh:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;Ljava/lang/String;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$12;->this$0:Lcom/youdo/view/MraidView;

    iput-object p2, p0, Lcom/youdo/view/MraidView$12;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/youdo/view/MraidView$12;->val$back:Z

    iput-boolean p4, p0, Lcom/youdo/view/MraidView$12;->val$forward:Z

    iput-boolean p5, p0, Lcom/youdo/view/MraidView$12;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/youdo/view/MraidView$12;->this$0:Lcom/youdo/view/MraidView;

    iget-object v1, p0, Lcom/youdo/view/MraidView$12;->val$url:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/youdo/view/MraidView$12;->val$back:Z

    iget-boolean v3, p0, Lcom/youdo/view/MraidView$12;->val$forward:Z

    iget-boolean v4, p0, Lcom/youdo/view/MraidView$12;->val$refresh:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youdo/view/MraidView;->access$1600(Lcom/youdo/view/MraidView;Ljava/lang/String;ZZZ)V

    return-void
.end method
