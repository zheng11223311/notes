.class public Lcom/youku/widget/HorizontalListView$MessageRun;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRun"
.end annotation


# instance fields
.field possion:I

.field final synthetic this$0:Lcom/youku/widget/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/youku/widget/HorizontalListView;I)V
    .locals 0
    .param p2, "pos"    # I

    .prologue
    .line 744
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView$MessageRun;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput p2, p0, Lcom/youku/widget/HorizontalListView$MessageRun;->possion:I

    .line 746
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$MessageRun;->this$0:Lcom/youku/widget/HorizontalListView;

    iget v1, p0, Lcom/youku/widget/HorizontalListView$MessageRun;->possion:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/widget/HorizontalListView;->access$600(Lcom/youku/widget/HorizontalListView;I)V

    .line 751
    return-void
.end method
