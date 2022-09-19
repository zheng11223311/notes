.class Lcom/youku/widget/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/HorizontalListView;
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
    .line 134
    iput-object p1, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/youku/widget/HorizontalListView;->access$002(Lcom/youku/widget/HorizontalListView;Z)Z

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/youku/widget/HorizontalListView;->invalidate()V

    .line 142
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/youku/widget/HorizontalListView;->requestLayout()V

    .line 143
    return-void

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-static {v0}, Lcom/youku/widget/HorizontalListView;->access$100(Lcom/youku/widget/HorizontalListView;)V

    .line 148
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/youku/widget/HorizontalListView;->invalidate()V

    .line 149
    iget-object v0, p0, Lcom/youku/widget/HorizontalListView$1;->this$0:Lcom/youku/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/youku/widget/HorizontalListView;->requestLayout()V

    .line 150
    return-void
.end method
