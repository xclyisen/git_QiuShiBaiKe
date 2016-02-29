//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace QiuShiBaiKe.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Message
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Message()
        {
            this.MessageComments = new HashSet<MessageComment>();
        }
    
        public long Id { get; set; }
        public string Msg { get; set; }
        public long UserId { get; set; }
        public bool IsAnonymous { get; set; }
        public string ImageUrl { get; set; }
        public System.DateTime CreateDateTime { get; set; }
        public long SupportedNum { get; set; }
        public long OpposedNum { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MessageComment> MessageComments { get; set; }
        public virtual User User { get; set; }
    }
}