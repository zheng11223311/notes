.class Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;
.super Ljava/lang/Object;
.source "GameSubCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameSubCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagOnClickListener"
.end annotation


# instance fields
.field private mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

.field private mPosition:I

.field final synthetic this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameSubCategoryActivity;Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;I)V
    .locals 0
    .param p2, "item"    # Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;
    .param p3, "position"    # I

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object p2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    .line 1125
    iput p3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mPosition:I

    .line 1126
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$700(Lcom/youku/gamecenter/GameSubCategoryActivity;)I

    move-result v0

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mPosition:I

    if-ne v0, v1, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mPosition:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$702(Lcom/youku/gamecenter/GameSubCategoryActivity;I)I

    .line 1137
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$800(Lcom/youku/gamecenter/GameSubCategoryActivity;)V

    .line 1139
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v1, v1, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$902(Lcom/youku/gamecenter/GameSubCategoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1141
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->mItem:Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v1, v1, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$1002(Lcom/youku/gamecenter/GameSubCategoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    :goto_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$100(Lcom/youku/gamecenter/GameSubCategoryActivity;)V

    .line 1148
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$1100(Lcom/youku/gamecenter/GameSubCategoryActivity;)V

    goto :goto_0

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;->this$0:Lcom/youku/gamecenter/GameSubCategoryActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$600(Lcom/youku/gamecenter/GameSubCategoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->access$1002(Lcom/youku/gamecenter/GameSubCategoryActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
