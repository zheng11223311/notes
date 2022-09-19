.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;
.super Ljava/lang/Object;
.source "DetailSerisCachePopWindow.java"

# interfaces
.implements Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1205
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/vo/DetailSeris;)V
    .locals 3
    .param p1, "detailseris"    # Lcom/youku/vo/DetailSeris;

    .prologue
    const/4 v2, 0x0

    .line 1185
    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$YearData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DetailSeris$MonthData;

    iget-object v1, v1, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$2700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)V

    .line 1198
    :cond_1
    :goto_0
    return-void

    .line 1191
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1192
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1193
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1194
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1195
    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$17;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$600(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
