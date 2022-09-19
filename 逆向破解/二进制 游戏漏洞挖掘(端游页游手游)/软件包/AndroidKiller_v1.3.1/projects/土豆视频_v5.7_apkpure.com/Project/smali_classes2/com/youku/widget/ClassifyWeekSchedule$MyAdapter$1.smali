.class Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;
.super Ljava/lang/Object;
.source "ClassifyWeekSchedule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->onBindViewHolder(Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

.field final synthetic val$mCardsInfo:Lcom/youku/vo/ChannelScheduleItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;ILcom/youku/vo/ChannelScheduleItem;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    iput p2, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->val$mCardsInfo:Lcom/youku/vo/ChannelScheduleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iget v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->val$position:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    invoke-virtual {v1}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    invoke-static {v0}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->access$100(Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    invoke-static {v0}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->access$100(Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    iget-object v0, v0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    invoke-static {v0}, Lcom/youku/widget/ClassifyWeekSchedule;->access$000(Lcom/youku/widget/ClassifyWeekSchedule;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->this$1:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    iget-object v0, v0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

    invoke-static {v0}, Lcom/youku/widget/ClassifyWeekSchedule;->access$000(Lcom/youku/widget/ClassifyWeekSchedule;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->val$mCardsInfo:Lcom/youku/vo/ChannelScheduleItem;

    iget-object v1, v1, Lcom/youku/vo/ChannelScheduleItem;->album_id:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter$1;->val$mCardsInfo:Lcom/youku/vo/ChannelScheduleItem;

    iget-object v3, v3, Lcom/youku/vo/ChannelScheduleItem;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
