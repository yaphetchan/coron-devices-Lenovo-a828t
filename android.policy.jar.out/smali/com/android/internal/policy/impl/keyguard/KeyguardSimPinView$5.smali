.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const-string v0, "KeyguardSimPinView"

    const-string v1, "onFinishInflate 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 143
    const-string v0, "KeyguardSimPinView"

    const-string v1, "onFinishInflate 7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    return v0
.end method