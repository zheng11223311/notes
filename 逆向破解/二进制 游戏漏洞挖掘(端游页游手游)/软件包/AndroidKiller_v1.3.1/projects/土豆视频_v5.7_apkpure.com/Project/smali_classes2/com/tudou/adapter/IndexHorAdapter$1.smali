.class Lcom/tudou/adapter/IndexHorAdapter$1;
.super Ljava/lang/Object;
.source "IndexHorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexHorAdapter;->onBindViewHolder(Lcom/tudou/adapter/IndexScrollCard;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexHorAdapter;

.field final synthetic val$item:Lcom/youku/vo/WeekScheduleItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexHorAdapter;Lcom/youku/vo/WeekScheduleItem;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tudou/adapter/IndexHorAdapter$1;->this$0:Lcom/tudou/adapter/IndexHorAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexHorAdapter$1;->val$item:Lcom/youku/vo/WeekScheduleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    new-instance v0, Lcom/youku/vo/SkipInfo;

    invoke-direct {v0}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 93
    .local v0, "skipInfo":Lcom/youku/vo/SkipInfo;
    const-string v1, "video"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/tudou/adapter/IndexHorAdapter$1;->val$item:Lcom/youku/vo/WeekScheduleItem;

    iget-object v1, v1, Lcom/youku/vo/WeekScheduleItem;->album_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/tudou/adapter/IndexHorAdapter$1;->val$item:Lcom/youku/vo/WeekScheduleItem;

    iget-object v1, v1, Lcom/youku/vo/WeekScheduleItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/tudou/adapter/IndexHorAdapter$1;->this$0:Lcom/tudou/adapter/IndexHorAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexHorAdapter;->access$000(Lcom/tudou/adapter/IndexHorAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 98
    iget-object v1, p0, Lcom/tudou/adapter/IndexHorAdapter$1;->this$0:Lcom/tudou/adapter/IndexHorAdapter;

    iget-object v2, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/adapter/IndexHorAdapter;->access$100(Lcom/tudou/adapter/IndexHorAdapter;Ljava/lang/String;)V

    .line 101
    return-void
.end method
