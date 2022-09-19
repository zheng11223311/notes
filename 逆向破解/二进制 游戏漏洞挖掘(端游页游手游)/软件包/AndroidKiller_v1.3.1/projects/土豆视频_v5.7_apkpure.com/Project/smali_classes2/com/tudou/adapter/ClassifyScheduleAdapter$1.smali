.class Lcom/tudou/adapter/ClassifyScheduleAdapter$1;
.super Ljava/lang/Object;
.source "ClassifyScheduleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyScheduleAdapter;->setViewHolderData(Lcom/tudou/adapter/ClassifyScheduleAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyScheduleAdapter;

.field final synthetic val$albumItem:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyScheduleAdapter;Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyScheduleAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;->val$albumItem:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;->this$0:Lcom/tudou/adapter/ClassifyScheduleAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ClassifyScheduleAdapter;->access$000(Lcom/tudou/adapter/ClassifyScheduleAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;->val$albumItem:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v2, v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->album_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyScheduleAdapter$1;->val$albumItem:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v3, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 128
    return-void
.end method
