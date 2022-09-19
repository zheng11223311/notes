.class Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/push/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataProcessingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/push/PushReceiver;


# direct methods
.method private constructor <init>(Lcom/tudou/push/PushReceiver;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;->this$0:Lcom/tudou/push/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tudou/push/PushReceiver;Lcom/tudou/push/PushReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tudou/push/PushReceiver;
    .param p2, "x1"    # Lcom/tudou/push/PushReceiver$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;-><init>(Lcom/tudou/push/PushReceiver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;->this$0:Lcom/tudou/push/PushReceiver;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/tudou/push/PushReceiver;->access$200(Lcom/tudou/push/PushReceiver;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/push/PushReceiver$DataProcessingAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
