.class Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;
.super Ljava/lang/Object;
.source "EndActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "videoTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v3, "videoUrl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "itemCode"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v3, "picUrl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v8, v3, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    .line 139
    .local v8, "summary":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    if-lt v3, v4, :cond_0

    .line 140
    const-string/jumbo v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x23

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v5}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v6}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v7}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$500(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v11}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$600(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v12}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$700(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-static {v14}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$900(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;->access$1100(Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v3 .. v19}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;J)Lcom/tudou/ui/activity/BindActivity;

    .line 147
    return-void

    .line 143
    :cond_0
    const-string/jumbo v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
