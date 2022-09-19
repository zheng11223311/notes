.class final Lcom/alibaba/sdk/android/login/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/sdk/android/model/Result;

.field final synthetic c:Lcom/alibaba/sdk/android/login/c/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/login/c/a;ILcom/alibaba/sdk/android/model/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/login/c/c;->c:Lcom/alibaba/sdk/android/login/c/a;

    iput p2, p0, Lcom/alibaba/sdk/android/login/c/c;->a:I

    iput-object p3, p0, Lcom/alibaba/sdk/android/login/c/c;->b:Lcom/alibaba/sdk/android/model/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v0, 0xf

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "login"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alibaba/sdk/android/login/c/c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/login/c/c;->b:Lcom/alibaba/sdk/android/model/Result;

    iget-object v4, v4, Lcom/alibaba/sdk/android/model/Result;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    const-string v1, "login"

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/login/c/c;->c:Lcom/alibaba/sdk/android/login/c/a;

    iget v2, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/login/c/a;->a(ILjava/lang/String;)V

    return-void
.end method
