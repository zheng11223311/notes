.class Lcom/youku/widget/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/youku/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView$2;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$2;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/youku/widget/HorizontalListView;->requestLayout()V

    .line 308
    return-void
.end method
