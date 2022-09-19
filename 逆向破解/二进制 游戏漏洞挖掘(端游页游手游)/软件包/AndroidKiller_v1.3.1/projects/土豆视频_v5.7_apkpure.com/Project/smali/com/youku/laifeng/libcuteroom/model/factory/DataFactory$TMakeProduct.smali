.class Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;
.super Landroid/os/AsyncTask;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TMakeProduct"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mProduct:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;, "Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct<TT;>;"
    .local p2, "l":Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;, "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener<TT;>;"
    const/4 v0, 0x0

    .line 62
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->this$0:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;

    .line 60
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mProduct:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;

    .line 64
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;, "Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct<TT;>;"
    const/4 v3, 0x1

    .line 69
    const/16 v0, 0x1000

    .line 70
    .local v0, "ret":I
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->this$0:Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory;->makeProduct(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mProduct:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mProduct:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 72
    const/16 v1, 0x1002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mProduct:Ljava/lang/Object;

    instance-of v1, v1, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;

    if-eqz v1, :cond_2

    .line 75
    array-length v1, p1

    if-le v1, v3, :cond_1

    aget-object v1, p1, v3

    if-eqz v1, :cond_1

    aget-object v1, p1, v3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mProduct:Ljava/lang/Object;

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;->parser(Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_2
    const/16 v0, 0x1001

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;, "Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct<TT;>;"
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 86
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;, "Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct<TT;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;

    .line 96
    return-void

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->mProduct:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;->onParserComplitionLitener(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;, "Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/factory/DataFactory$TMakeProduct;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
